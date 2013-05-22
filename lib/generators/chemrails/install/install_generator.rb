require 'rails/generators/migration'

module ChemRails
	module Generators
		class InstallGenerator < ::Rails::Generators::Base
			include Rails::Generators:migration
			source_root File.expand_path('../templates', __FILE__)
			desc "add the migrations"

			def self.next_migration_number (path)
				unless @prev_migration_nr
					@prev_migration_nr = Time.now.utc.strftime("%X%m%d%H%M%S").to_i
				else
					@prev_migration_nr += 1
				end
				@prev_migration_nr.to_s
			end

			def copy_migrations
				migration_template "create_compounds.rb", "db/migrate/create_compounds.rb"
			end
		end
	end
end