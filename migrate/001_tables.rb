Sequel.migration do
  change do
    create_table(:concept1) do
      primary_key :id
    end
  end
end
