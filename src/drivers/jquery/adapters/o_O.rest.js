// REST & Rails, woop!
o_O.rest = {
  all: function(model, callback){
    $.get('/' + model.table_name, function(response){
      var documents = JSON.parse(response);
      if(typeof callback === 'function')
      {
        callback(documents);
      }
    })
  },
  destroy: function(object, callback){
    object.destroyed = true;
    $.ajax({
      type: 'DELETE',
      url: '/' + object.table_name + '/' + object.id,
      success: function(){
        if(typeof callback === 'function')
        {
          callback(object);
        }
      }
    })
  },
  save: function(object, callback, original_callback)
  {
    var object_to_save = {};
    var url;
    for(var i = 0; i < object.attributes.length; i++)
    {
      object_to_save[object.attributes[i]] = object[object.attributes[i]];
    }
    var respond = function(response){
      try{
        var saved_object = JSON.parse(response);
        for(var attribute in saved_object)
        {
          object_to_save[attribute] = saved_object[attribute];
        }
        object_to_save.new_record = false;
      }
      catch(e){
        object_to_save = response;
      }
      if(typeof callback === 'function')
      {
        callback(object_to_save);
      }
    }
    if(typeof original_callback.url === 'string')
    {
      url = original_callback.url;
    }
    else if(typeof window[object.model_name]['url'] === 'string')
    {
      url = window[object.model_name]['url'];
    }
    else
    {
      url = '/' + object.table_name;
    }
    
    if(window[object.model_name]['include_json_root'] === true)
    {
      var object_name;
      new_object_to_save = {};
      if(typeof window[object.model_name]['json_root_name'] === 'string')
      {
       object_name = window[object.model_name]['json_root_name'];
      }
      else
      {
        object_name = object.model_name.underscore();
      }
      new_object_to_save[object_name] = object_to_save;
      object_to_save = new_object_to_save;
    }
    if(typeof o_O.config.authenticity_token === 'string')
    {
      object_to_save['authenticity_token'] = o_O.config.authenticity_token;
    }
    if(object.new_record)
    {
      $.post(url, object_to_save, respond);
    }
    else
    {
      $.ajax({
        type: 'PUT',
        data: object_to_save,
        url: url + '/' + object.id,
        success: respond
      })
    }
  },
  find: function(model, id, callback, options)
  {
    var url = '/' + model.table_name + '/' + id;
    if(typeof options === 'object' && options.prefix)
    {
      url = options.prefix + url;
    }
    $.get(url, function(response){
      var retrieved_object = JSON.parse(response);
      if(typeof callback === 'function')
      {
        retrieved_object.new_record = false;
        callback(retrieved_object);
      }
    })
  }
}

o_O.config.rest = {}