run `mcnp6 i=air_heu_50.i o=air_heu_50.o tasks 8`
run `./snm.py --db_path=/home/simulator/data/database.xml --sim_name="snm" --num_particles=1e11 --threads=8`
run `./snm-plot.py --rendezvous_file="snm_rendezvous_5.xml" --estimator_id=1 --entity_id=4 --mcnp_file=air_heu_50.io --mcnp_file_start=1375`
run `./snm-plot.py --rendezvous_file="snm_rendezvous_5.xml" --estimator_id=2 --entity_id=5 --mcnp_file=air_heu_50.io  --mcnp_file_start=1442`
run `./snm-plot.py --rendezvous_file="snm_rendezvous_5.xml" --estimator_id=3 --entity_id=6 --mcnp_file=air_heu_50.io  --mcnp_file_start=1509`
run `./snm-plot.py --rendezvous_file="snm_rendezvous_5.xml" --estimator_id=4 --entity_id=7 --mcnp_file=air_heu_50.io  --mcnp_file_start=1576`
run `./snm-plot.py --rendezvous_file="snm_rendezvous_5.xml" --estimator_id=5 --entity_id=8 --mcnp_file=air_heu_50.io  --mcnp_file_start=1643`