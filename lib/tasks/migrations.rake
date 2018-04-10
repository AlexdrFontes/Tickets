# HACK attach db:migrate into assets:clean call so that we don't need to
# invoke Dokku manually to run migrations.
Rake::Task['assets:clean'].enhance do
  Rake::Task['db:migrate'].invoke
end
