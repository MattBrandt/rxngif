Rxngif::Application.routes.draw do
  root('pictures#index')


  # get("/", { :controller => "pictures", :action => "index" })
  # get("/all_pictures", { :controller => "pictures", :action => "index" })
  # get("/picture_details/:id", { :controller => "pictures", :action => "show" })

  # CREATE
  get("/new",            { :controller => "pictures", :action => "new"        })
  get("/create_picture", { :controller => "pictures", :action => "create"   })

  # READ
  get("/all_pictures",     { :controller => "pictures", :action => "index"      })
  get("/pictures/:id", { :controller => "pictures", :action => "show"       })

  # UPDATE
  get("/pictures/:id/edit", {:controller => "pictures", :action => "edit" })
  get("/update_picture/:id", {:controller => "pictures", :action => "update" })

  # DELETE
  get("/delete_picture/:id", {:controller => "pictures", :action => "destroy" })


  # COMMENTS
  # CREATE

  get("/comments/new",        { :controller => "comments", :action => "new"        })
  get("/create_comment",      { :controller => "comments", :action => "create"   })

  # READ
  get("/all_comments",        { :controller => "comments", :action => "index"      })
  get("/comments/:id",        { :controller => "comments", :action => "show"       })

  # UPDATE
  get("/comments/:id/edit",   {:controller => "comments", :action => "edit" })
  get("/update_comment/:id",  {:controller => "comments", :action => "update" })

  # DELETE
  get("/delete_picture/:id",  {:controller => "comments", :action => "destroy" })

end
