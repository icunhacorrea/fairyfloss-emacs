# 🧚‍♀️ Fairyfloss Theme for Emacs

A port of the beautiful **Fairyfloss theme** originally created by **SailorHG**. This is a dark theme that uses a soft, pastel color palette for pleasant contrast and a relaxing coding environment.

---

## 🔗 About & Reference

This theme is directly inspired by and ported from the original work:

* **Original Creator:** SailorHG
* **Source Repository:** [https://github.com/sailorhg/fairyfloss](https://github.com/sailorhg/fairyfloss)

---

## 🎨 Screenshots

In soon

---

## 📦 Installation

### Manual

1.  Download the `fairyfloss-theme.el` file and place it in your Emacs themes directory (usually `~/.emacs.d/themes/`).
2.  Add the path to your theme directory in your configuration file (`init.el`):

    ```elisp
    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
    ```

3.  In Emacs, reload your configuration (`M-x eval-buffer`) and activate the theme:

    ```elisp
    (load-theme 'fairyfloss t)
    ```

### Via Package (If you plan to submit to MELPA)

**(Remove this section if you do not plan on publishing to MELPA)**

If the theme is published on MELPA, you can install it using the following command:

```elisp
M-x package-install [RET] fairyfloss-theme [RET]