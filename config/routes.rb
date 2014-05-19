Rxngif::Application.routes.draw do
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })

  # CREATE
  get("/new_picture_form", { :controller => "pictures", :action => "new"        })
  get("/create_picture", { :controller => "pictures", :action => "create"   })

  # READ
  get("/all_pictures",     { :controller => "pictures", :action => "index"      })
  get("/pictures/:id", { :controller => "pictures", :action => "show"       })

  # UPDATE
  get("/pictures/:id/edit", {:controller => "pictures", :action => "edit" })
  get("/update_picture/:id", {:controller => "pictures", :action => "update" })

  # DELETE
  get("/delete_picture/:id", {:controller => "pictures", :action => "destroy" })

end
