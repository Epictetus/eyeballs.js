var ReviewsController = {
  create: function(){
    review = Review.initialize(Form.attributes($(this)));
    if(review.save())
    {
      console.log('saving!');
    }
    // else
    // {
    //   console.log(review.errors)
    // }
  }
}

$('form[data-action=reviews-create]').submit(ReviewsController.create);
$('form[data-action=reviews-create]').submit(function(){ return false });