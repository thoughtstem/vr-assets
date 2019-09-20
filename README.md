vr-assets
=========

Provides various assets suitable for use with `vr-engine`.

To add an asset `X`:

1) Place the `X.glb` file into the `assets/` directory.
2) Place a preview `X.png` into the `assets/` directory as well.
2) Edit `assets.rkt` to list the preview image, meta data (e.g. Creative Commons Attributions), and custom compontents for that asset
3) The asset will automatically be provided as `X` and automatically documented.  Run `raco setup vr-assets` to check.

# Suggested Workflows

Generating the preview image can be time consuming.  To automate this process, use `assets/generate-screenshots.rkt` -- which will produce `.png` preview images for all `.glb` files in `assets/`.  (Note: You will need `screenshot-glb` installed on your computer.)

Or if you know the url for the model, you can take advantage of the `assets/grab-model.rkt` script. 

```
cd assets/
racket grab-model.rkt URL-TO-MODEL FILE-NAME.glb
```

This will automatically fetch the model from the URL, download it, and generate the preview PNG.  Then, all you need to do is add an entry in `assets.rkt`.
