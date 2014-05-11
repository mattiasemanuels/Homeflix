# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140511195849) do

  create_table "comments", force: true do |t|
    t.string   "user_id"
    t.string   "imdb_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorits", force: true do |t|
    t.string   "user_id"
    t.string   "imdb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "imdb_id"
    t.string   "Title"
    t.string   "Year"
    t.string   "Rated"
    t.string   "Released"
    t.string   "Runtime"
    t.string   "Genre"
    t.string   "Director"
    t.string   "Writer"
    t.string   "Actors"
    t.string   "Plot"
    t.string   "Language"
    t.string   "Country"
    t.string   "Awards"
    t.string   "Poster"
    t.string   "Metascore"
    t.string   "imdbRating"
    t.string   "imdbVotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.string   "user_id"
    t.string   "imdb_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
