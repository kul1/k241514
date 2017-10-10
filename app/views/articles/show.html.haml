%div{"data-role" => "menu_mm", "data-theme" => "b", "data-backbtn"=>"false"}
  #article-title= @article.title
  -"seo Keywords"
  -#article-text.ui-corner-all= @article.text
  -#article-text.ui-corner-all
    -Keywords:
    %- @article.keywords
    -description: 
    %- @article.text
  
%div= @article.body.html_safe
= link_to "Printable article (pdf)", {controller: "mindapp", action: "init", s: 'articles:xedit_article', article_id: @article.id}
= link_to image_tag('pencil.png', style:'border:none; float:none;'), {controller: "mindapp", action: "init", s: 'articles:xedit_article', article_id: @article.id}, data: { confirm: "Please Confirm" }
- @comments.each do |comment|
  %div#article-comment.ui-corner-all
    Author:    
    %b= comment.user.code if comment.user
    %div#comment-body
      %i= comment.body

- if login?
  %h3 Add a comment:
  = form_for @article.comments.build, url: "/mindapp/init?s=comments:new_comment" do |f|
    = f.hidden_field :article_id, :value => @article.id
    = f.label :body, "Comment"
    = f.text_area :body
    = f.submit
