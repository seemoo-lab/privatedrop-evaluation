[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/seemoo-lab/privatedrop-evaluation/HEAD?filepath=privatedrop.ipynb)

# PrivateDrop Experimental Evaluation 

This Jupyter notebook contains a experimental performance evaluation of our *PrivateDrop* protocol.
The results are part of our paper **PrivateDrop: Practical Privacy-Preserving Authentication for Apple AirDrop**.

## Execute

Use [Binder](https://mybinder.org/v2/gh/seemoo-lab/privatedrop-evaluation/HEAD?filepath=privatedrop.ipynb) to execute the notebook.
Alternative, you can locally execute the notebook.

**Setup environment.** We create and activate a dedicated virtual environment.

```bash
make venv
source venv/bin/activate
```

**Start.** Install all dependencies and start the main Jupyter notebook.

```bash
make
```

## Reproduce figures for our paper

Reproduce the figures in our paper by running (figures will be available in [`Plots`](Plots) folder):

```bash
make run
```

## Authors

* Alexander Heinrich ([email](mailto:aheinrich@seemoo.tu-darmstadt.de))
* Milan Stute ([email](mailto:mstute@seemoo.tu-darmstadt.de))
