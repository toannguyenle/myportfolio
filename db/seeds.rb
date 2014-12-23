# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   Mayor.create(name: 'Emanuel', city: cities.first)
apps = App.create([
  { name: 'Social Tic',
    app_url: 'https://tttcg.firebaseapp.com/',
    built_with: "AngularJS, Firebase, Javascript, HTML and CSS" ,
    snippet: "",
    description: "For this project, chat was synced in real time using Firebase technology as well as real time heat map from users that area accessing the sites (up to 50 at any time.
'Social Tic' was my first playground in term of making multiple technology such as AngularJS works with Firebase and the traditional Javascript.",
    source_url: "https://github.com/toannguyenle/tictactoe/tree/master/ver3.0production",
    thumbnail_url1: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+12.48.06+PM.png",
    thumbnail_url2: "",
    thumbnail_url3: ""},
  { name: 'myBeautyCase',
    app_url: 'https://mybeautycase.herokuapp.com/',
    built_with: " Ruby On Rails (with gems like PaperClip), Web Brick server, Heroku app deployment, jQuery Bootstrap on the foundation of HTML5 and CSS.",
    snippet: "",
    description: "Inspired by the idea of my wife who is struggled to keep her beauty products organized. myBeautyCase is my first Ruby on Rails app. Builtwith: Ruby On Rails (with gems like PaperClip), Web Brick server, Heroku app deployment, jQuery Bootstrap on the foundation of HTML5 and CSS. Extensive use of Factual's Consumer Products APIs were also used during this project to simplify the process of search for products.",
    source_url: "https://github.com/toannguyenle/makeupcase",
    thumbnail_url1: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.32.09+PM.png",
    thumbnail_url2: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.32.21+PM.png",
    thumbnail_url3: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.32.39+PM.png"},
  { name: 'feedme',
    app_url: 'https://feedmeapp.herokuapp.com/',
    built_with: "Ruby On Rails, AngularJS, Google Maps API, ORDR.in API, Yelp API, Bootstrap" ,
    snippet: "",
    description: "For the undecided consumer, who may have limited budget and time, feedme is a service that assists users to quickly make dining decisions. Unlike Grubhub, Groupon or Yelp, feedMe provides an intuitive yet effortless experience. First project using Test Driven Development mantra. Using Rspec Testing with FactoryGirl and CapyBara, feedMe was built with: Ruby On Rails, AngularJS, Google Maps API, ORDR.in API, Yelp API, Bootstrap all inside a functional Single Page Application.",
    source_url: "https://github.com/toannguyenle/feedmeapp",
    thumbnail_url1: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.31.17+PM.png",
    thumbnail_url2: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.31.02+PM.png",
    thumbnail_url3: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+10.28.45+PM.png"},
  { name: 'LAST24',
    app_url: 'https://last24.herokuapp.com/',
    built_with: "Javascript and jQuery, CSS, HTML and Ruby on Rails using API from Twitter and Instagram" ,
    snippet: "",
    description: "LAST24 merges your socials news feeds from your friends and people you follow into one single, elegantly designed timeline. All interactions will be contained with the side (like, comment, tweet) without ever having the need to navigate away to provider's website. 
LAST24 built with Javascript, CSS, HTML and Ruby on Rails using API from Twitter and Instagram (for content and oAuth). ",
    source_url: "https://github.com/RKim220/project4",
    thumbnail_url1: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+12.49.19+PM.png",
    thumbnail_url2: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+12.54.24+PM.png",
    thumbnail_url3: "https://s3-us-west-1.amazonaws.com/myportfolio.toan/Screen+Shot+2014-12-22+at+12.54.38+PM.png"}
   ])