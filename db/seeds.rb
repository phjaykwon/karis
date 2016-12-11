# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@aUser = User.create! :first_name => 'Eric', :last_name => 'Jan', :email => 'a@test.com', :password => 'apassword', :password_confirmation => 'apassword'
@bUser = User.create! :first_name => 'Ericasdf', :last_name => 'Jansadfadsf', :email => 'b@test.com', :password => 'password', :password_confirmation => 'password'
@aArtist = Artist.create! :name => 'Hillsong'
@aChord = Chord.create! :title => 'Chords by Hillsong belonging to Eric Jan', :content => 'song text goes here', :video_url => 'url'
@bChord = Chord.create! :title => 'Chord2', :content => 'chord b song stuff', :video_url => 'urlother'
@cChord = Chord.create! :title => 'Chord3', :content => 'chord c asdyfopasidgsa', :video_url => 'urlother'
@dChord = Chord.create! :title => 'Chord4', :content => 'chord d asdfsda', :video_url => 'urlother'
@eChord = Chord.create! :title => 'Chord5', :content => 'chord e asdf;lasgasg', :video_url => 'urlother'
#r = Role.add_role()
@aFavorite = Favorite.create! :user_id => @aUser.id, :chord_id => @dChord.id
@bFavorite = Favorite.create! :user_id => @aUser.id, :chord_id => @eChord.id
@cFavorite = Favorite.create! :user_id => @aUser.id, :chord_id => @cChord.id

@aUser.chords << @aChord
@aUser.chords << @bChord
@aUser.chords << @cChord

@aUser.favorites << @aFavorite
@aUser.favorites << @bFavorite
@aUser.favorites << @cFavorite


@bUser.chords << @dChord
@bUser.chords << @eChord


@aArtist.chords << @aChord
@aArtist.chords << @bChord
@aArtist.chords << @cChord
@aArtist.chords << @dChord
@aArtist.chords << @eChord
