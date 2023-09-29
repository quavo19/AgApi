class CreateTeamProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :team_profiles do |t|
      t.string :image
      t.string :profile_name
      t.string :profile_poss
      t.text :profile_description

      t.timestamps
    end
  end
end
