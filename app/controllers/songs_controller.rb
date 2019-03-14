class SongController < ApplicationController

  get '/songs/new' do
    erb :'/songs/new'
  end



  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/show'
  end


  post '/songs' do
    @artist = Artist.find_or_create_by(name: params[:song][:artist])
    @song = Song.create(name: params[:song][:name], artist_id: @artist.id)
    params[:song][:genre_id].each do |id|
      SongGenre.create(genre_id: id, song_id: @song.id)
    end

    redirect "/songs/#{@song.slug}"
  end
end
