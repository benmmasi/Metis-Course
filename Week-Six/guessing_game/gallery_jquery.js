i = 0

var imageArray = [
  "http://www.funchap.com/wp-content/uploads/2014/05/Cute-Dog-Wallpapers.jpg",
<img
  "http://kcen.images.worldnow.com/images/23411805_BG1.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/2/22/Turkish_Van_Cat.jpg",
  "http://dogblogforeveryone.weebly.com/uploads/1/3/7/2/13722182/658040288_orig.jpg",
  "http://www.yorkvision.co.uk/wp-content/uploads/2014/04/220.jpg"
    ]

    var imageAnswer = [
      "dog",
      "dog",
      "cat",
      "dog",
      "dog"
    ]

    $(function(){
      $("#next").click(next);
    });

    function next(){
      i = i + 1;
      $("#image").prop("src", imageArray[i]);
    }
