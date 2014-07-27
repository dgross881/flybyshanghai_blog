require 'spec_helper' 

describe "Createing blog items" do
  let!(:article) { Article.create!(title: "Friday night", body: "Show on fuxing lew on friday night at 5:30") } 

  def visit_article(article)
    visit '/articles'
    within "#article_list_#{article.id}" do 
     click_link "List Items"
    end 
  end 

  it "is successful with valid content" do 
    visit_todo_list(todo_list) 
    click_link "New Todo Item"
    fill_in "Content", with: "Milk"
    click_button "Save" 
    expect(page).to have_content("Added todo list item")
    within("ul.todo_items") do
      expect(page).to have_content("Milk")
   end 
  end 
 
 it "displays an error with no content" do 
   visit_todo_list(todo_list)
   click_link "New Todo Item" 

   fill_in "Content", with: ""
   click_button "Save" 
    
   within("div.flash") do
     expect(page).to have_content("List item did not save")
   end 
     expect(page).to have_content("Content can't be blank")
  end 

  it "displays an error with content too short" do 
   visit_todo_list(todo_list)
   click_link "New Todo Item" 

   fill_in "Content", with: "hi"
   click_button "Save" 
   expect(page).to have_content("Content is too short")
  end 
end
