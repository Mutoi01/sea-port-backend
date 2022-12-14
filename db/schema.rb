# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_12_013650) do

  create_table "docks", force: :cascade do |t|
    t.string "status"
    t.string "cargo"
    t.integer "ship_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "vessel"
    t.integer "built"
    t.integer "gt"
    t.integer "size"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "occupation"
  end

end
