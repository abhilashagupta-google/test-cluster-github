connection: "k8s-rightsizing-test"

# include all the views
include: "/views/**/*.view"

datagroup: test_model_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_model_project_default_datagroup

explore: persons {}

# Testing rightsizing #commit1

# commit 2

# Commit 3 (will not push to remote, but will deploy to production)

# commit 4
