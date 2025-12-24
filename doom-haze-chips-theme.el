;;; doom-haze-chips-theme.el --- Light blue Moonlight variant -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: Valentin Lechner
;; Inspired by doom-moonlight + Tonsky Alabaster BG
;;
;;; Commentary:
;; A light-blue reinterpretation of Moonlight with background-chip syntax.
;;
;;; Code:

(require 'doom-themes)

(defgroup doom-haze-chips-theme nil
  "Options for the `doom-haze-chips' theme."
  :group 'doom-themes)

(def-doom-theme doom-haze-chips
    "A light-blue variant of Moonlight with Tonsky-style background highlights."

  ;; ------ Palette ---------------------------------------------------------
  (
   ;; Core backgrounds
   (bg      '("#bfcdf1" "#bfcdf1" "white"))
   (bg-alt  '("#b4c3e7" "#b4c3e7" "brightwhite"))

   (fg      '("#1a1f2e" "#1a1f2e" "black"))
   (fg-alt  '("#233049" "#233049" "brightblack"))


   (base0   '("#1a1f2e" "#1a1f2e" "black"))
   (base1   '("#2b3750" "#2b3750" "brightblack"))
   (base2   '("#405074" "#405074" "brightblack"))
   (base3   '("#6071a1" "#6071a1" "brightblack"))
   (base4   '("#7f8dbb" "#7f8dbb" "brightblack"))
   (base5   '("#9aa9d0" "#9aa9d0" "brightwhite"))
   (base6   '("#b7c3e5" "#b7c3e5" "brightwhite"))
   (base7   '("#d8def4" "#d8def4" "white"))
   (base8   '("#f5f7ff" "#f5f7ff" "white"))

   (grey base5)

   ;; Accents
   ;; ---- Reds -----------------------------------------------------
   (dark-red   '("#b85a6c" "#b85a6c" "red"))
   (red        '("#d16a7d" "#d16a7d" "brightred"))
   (light-red  '("#e39aa8" "#e39aa8" "brightred"))

   ;; ---- Orange --------------------------------------------------
   (dark-orange  '("#c26f43" "#c26f43" "yellow"))
   (orange       '("#e08a5c" "#e08a5c" "brightyellow"))
   (light-orange '("#f0b18a" "#f0b18a" "brightyellow"))

   ;; ---- Yellow --------------------------------------------------
   (dark-yellow  '("#b8924b" "#b8924b" "yellow"))
   (yellow       '("#d7ae63" "#d7ae63" "brightyellow"))
   (light-yellow '("#eed49c" "#eed49c" "brightyellow"))

   ;; ---- Green ---------------------------------------------------
   (dark-green  '("#6f9e62" "#6f9e62" "green"))
   (green       '("#8fbf7f" "#8fbf7f" "brightgreen"))
   (light-green '("#b6e1aa" "#b6e1aa" "brightgreen"))

   ;; ---- Teal ----------------------------------------------------
   (dark-teal  '("#4ea392" "#4ea392" "cyan"))
   (teal       '("#6dbfac" "#6dbfac" "brightcyan"))
   (light-teal '("#9be0d1" "#9be0d1" "brightcyan"))

   ;; ---- Blue ----------------------------------------------------
   (dark-blue   '("#4e61b2" "#4e61b2" "blue"))
   (blue        '("#7a94df" "#7a94df" "brightblue"))
   (light-blue  '("#b1c2f3" "#b1c2f3" "brightblue"))

   ;; ---- Magenta ------------------------------------------------
   (dark-magenta  '("#8467bb" "#8467bb" "magenta"))
   (magenta       '("#a588e8" "#a588e8" "brightmagenta"))
   (light-magenta '("#d0c0f7" "#d0c0f7" "brightmagenta"))

   ;; ---- Violet / Pink ------------------------------------------
   (dark-violet  '("#a46eb1" "#a46eb1" "magenta"))
   (violet       '("#c98bd9" "#c98bd9" "brightmagenta"))
   (light-violet '("#e1b6ec" "#e1b6ec" "brightmagenta"))

   ;; ---- Cyan ---------------------------------------------------
   (dark-cyan  '("#5fb3c6" "#5fb3c6" "cyan"))
   (cyan       '("#89d5e5" "#89d5e5" "brightcyan"))
   (light-cyan '("#bdeef3" "#bdeef3" "brightcyan"))

   ;; UI elements
   (region     (doom-darken bg 0.12))
   (selection  (doom-darken bg 0.08))
   (highlight  blue)
   (vertical-bar (doom-darken bg 0.15))
   (line-highlight (doom-darken bg 0.05))
   (cursor     fg)

   ;; Modeline
   (modeline-bg     bg)
   (modeline-bg-alt bg-alt)
   (modeline-fg     fg-alt)
   (modeline-fg-alt fg)

   (comments        dark-teal)
   (doc-comments    comments)
   ;; variables show up everywhere, nn to highlight them too much
   (variables       fg)
   ;; methods should be clearly visible but not screaming
   (methods         dark-blue)
   (builtin         dark-magenta)
   (functions       dark-blue)
   (constants       dark-violet)
   (strings         yellow)
   (keywords        magenta)
   (type            dark-blue)
   (numbers         orange)
   (operators       teal)
   (success         green)
   (error           red)
   (warning         yellow)
   (vc-added        light-green)
   (vc-modified     blue)
   (vc-deleted      light-red))

  ;; ------ Face Overrides --------------------------------------------------

  (
   ;; ---- Core -------------------------------------------------------------
   (default :background bg :foreground fg)
   (fringe  :background bg)
   (cursor  :background fg)

   ;; Line numbers
   ((line-number &override)
    :background bg :foreground base4)
   ((line-number-current-line &override)
    :background (doom-darken bg 0.07) :foreground fg)

   ;; hl-line / region
   (hl-line :background (doom-darken bg 0.04))
   (region  :background (doom-darken bg 0.12))

   ;; ---- Modeline -----------------------------------------------------------
   (mode-line
    :background modeline-bg
    :foreground modeline-fg
    :box nil)

   (mode-line-inactive
    :background modeline-bg-alt
    :foreground modeline-fg-alt
    :box nil)

   (doom-modeline-bar
    :background blue)

   (doom-modeline-buffer-file
    :foreground modeline-fg :weight 'bold)

   (doom-modeline-buffer-path
    :foreground base1)

   (doom-modeline-buffer-modified
    :foreground orange :weight 'bold)

   (doom-modeline-project-dir
    :foreground blue)

   (doom-modeline-major-mode
    :foreground dark-blue)

   (doom-modeline-minor-modes
    :foreground base2)

   (doom-modeline-info
    :foreground success)

   (doom-modeline-warning
    :foreground warning)

   (doom-modeline-urgent
    :foreground error)
   (mode-line-highlight :foreground modeline-fg)
   (mode-line-buffer-id :foreground modeline-fg :weight 'bold)
   (header-line :background modeline-bg-alt :foreground modeline-fg)


   ;; ---- Tonsky-style background chips -----------------------------------
   (font-lock-comment-face
    :foreground fg
    :box `(:line-width -1 :color ,(doom-blend (doom-darken comments 0.25) bg 0.4))
    :background (doom-blend comments bg 0.2))
   (font-lock-doc-face
    :foreground fg
    :background (doom-blend doc-comments bg 0.25)
    ;;:box `(:line-width -1 :color ,(doom-blend (doom-darken doc-comments 0.25) bg 0.4))
    :extend t)

   (font-lock-string-face
    :foreground fg
    :background (doom-blend strings bg 0.37))

   (font-lock-keyword-face
    :foreground fg
    :weight 'bold
    :background (doom-blend keywords bg 0.3))


   ;; Indent bars ------------------------------------------------------
   ;; check if needed
   (indent-bars-face :background nil :inherit 'default)

   ;; ---- Terraform --------------------------------------------------------
   (terraform-builtin-face
    :foreground keywords
    :weight 'bold)

   (terraform-resource-type-face
    :foreground type
    :weight 'normal)

   (terraform-resource-name-face
    :foreground dark-blue
    :background (doom-blend light-blue bg 0.95)
    :weight 'normal)

   (terraform-variable-name-face
    :foreground base1
    :weight 'bold)

   (hcl-string-interpolation-face
    :foreground fg
    :background (doom-blend strings bg 0.40)
    :weight 'bold)

   ;; ---- Markdown ---------------------------------------------------------
   (markdown-code-face
    :foreground base0
    :weight bold)


   ;; ---- Magit diffs ------------------------------------------------------
   (magit-diff-added-highlight
    :foreground (doom-blend green fg 0.8)
    :background (doom-blend green bg 0.18)
    :weight 'bold)
   (magit-diff-removed-highlight
    :foreground (doom-blend red fg 0.78)
    :background (doom-blend red bg 0.16)
    :weight 'bold)
   (magit-branch-local
    :foreground (doom-blend green fg 0.75)
    :weight 'medium)
   (magit-branch-remote
    :foreground (doom-blend cyan fg 0.75)
    :slant 'italic)

   ;; ---- Web-mode --------------------------------------------------------
   (web-mode-html-attr-value-face
    :foreground fg
    :background (doom-blend strings bg 0.35))

   ;; ---- LSP 
   (lsp-face-highlight-read
    :background (doom-darken bg 0.2))

   (lsp-flycheck-info-unnecessary-category
    :background comments
    :foreground fg)


   ;; ---- LaTeX / AUCTeX sectioning (chip-style) ----------------------------
   (TeX-fold-unfolded-face
    :background bg)
   (font-latex-sectioning-1-face
    :foreground fg
    :background (doom-blend type bg 0.35)
    :weight 'bold)

   (font-latex-sectioning-2-face
    :foreground fg
    :background (doom-blend methods bg 0.30)
    :weight 'bold)

   (font-latex-sectioning-3-face
    :foreground fg
    :background (doom-blend operators bg 0.25)
    :weight 'semi-bold)

   (font-latex-sectioning-4-face
    :foreground fg
    :background (doom-blend strings bg 0.40)
    :weight 'normal)

   (font-latex-sectioning-5-face
    :foreground fg
    :background (doom-blend doc-comments bg 0.3)
    :weight 'normal)

   ;; Labels / refs
   (font-latex-label-face :foreground magenta)
   (font-latex-reference-face :foreground blue)

   ;;---- C/C++ --------------------------------------------------------
   (font-lock-preprocessor-face
    :foreground base3
    :weight 'bold)
   
   ;; ---- UI Elements ------------------------------------------------------
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box nil)
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box nil)

   (vertical-border :foreground vertical-bar)

   ;; ---- Minibuffer -------------------------------------------------------
   (minibuffer-prompt :foreground blue :weight 'bold)

   ;; ---- Search -----------------------------------------------------------
   (isearch :background yellow :foreground bg)
   (lazy-highlight :background (doom-blend blue bg 0.25))

   ;; ---- Term / vterm -----------------------------------------------------
   (term        :background bg :foreground fg)
   (vterm       :background bg :foreground fg)
   (vterm-color-default :background bg :foreground fg)))

;;; doom-haze-chips-theme.el ends here
;; start rainbow-mode for this file
;; Local Variables:
;; eval: (rainbow-mode 1)
;; End:
