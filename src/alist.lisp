(require 'org-publish)
(setq org-publish-project-alist
      '(

        ("org-notes"
         :base-directory "~/422.press/src/"
         :base-extension "org"
         :publishing-directory "~/422.press/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         )

        ("org-static"
         :base-directory "~/422.press/src/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/422.press/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("org"
         :components ("org-notes" "org-static")
         :auto-sitemap t
         :sitemap-filename: "sitemap.org"
         :sitemap-style "tree"
         :sitemap-file-entry-format: "%t, %d"
         )
        ))

