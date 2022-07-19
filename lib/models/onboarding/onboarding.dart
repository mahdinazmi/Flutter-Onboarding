class Slide {
  String ? imageAssetPath;
  String ? title;
  String ? desc;

  Slide({
    this.title,
    this.desc,
    this.imageAssetPath
  });

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String ? getImageAssetPath() {
    return imageAssetPath;
  }

  String ? getTitle() {
    return title;
  }

  String ? getDesc() {
    return desc;
  }

}

List < Slide > getSlides() {

  List < Slide > slides = [];

  Slide slide = Slide();

  // 1
  slide.setTitle('Anywhere at anytime');
  slide.setDesc('Stream your favorite tunes on the go\n at anytime with premium.');
  slide.setImageAssetPath('assets/vectors/1.svg');
  slides.add(slide);

  slide = Slide();

  // 2
  slide.setTitle('Listen ad free');
  slide.setDesc('Enjoy ad free listening and jam out\n to your favorites songs.');
  slide.setImageAssetPath('assets/vectors/2.svg');
  slides.add(slide);

  slide = Slide();

  // 3
  slide.setTitle('First month on us');
  slide.setDesc('Due to the current cricumstances\n try the first month free on us');
  slide.setImageAssetPath('assets/vectors/3.svg');
  slides.add(slide);

  return slides;
}