
## clean_run.py
python clean_run.py --dataset voc --mode clip --detector gt --w 8  --t 32 
python clean_run.py --dataset voc --mode clip --detector yolo --w 8  --t 32 
python clean_run.py --dataset voc --mode clip --detector frcnn --w 8  --t 32 
python clean_run.py --dataset coco --mode clip --detector gt --w 8  --t 36
python clean_run.py --dataset kitti --mode clip --detector gt --w 8  --t 11
python clean_run.py --dataset voc --mode mask --detector gt --w 14 --m 8 --t 18 


## clean_eval.py
python clean_eval.py --dump --dataset voc --mode clip --detector gt --w 8  --t 32
#...... similar usage for other datasets and configurations


## provable_run.py
python provable_run.py --dataset voc --w 8 --p 8 --t_min 28 --t_max 36 --num_img 500 --onoffset 8 --mode clip --cache
# the --cache flag can only be set after running misc/dump_features.py
# python dump_features.py --dataset voc

#...... similar usage for other datasets and configurations


## provable_eval.py
python provable_eval.py --dataset voc --mode clip --detector gt --w 8  --t 32 --num_img 500 --dump pro_dump8 --loc far
python provable_eval.py --dataset voc --mode clip --detector gt --w 8  --t 32 --num_img 500 --dump pro_dump8 --loc close
python provable_eval.py --dataset voc --mode clip --detector gt --w 8  --t 32 --num_img 500 --dump pro_dump8 --loc over
#...... similar usage for other datasets and configurations


## plot
#python plot_clean.py --dataset coco --mode clip --t 36
#python plot_clean.py --dataset voc --mode clip --t 32
#python plot_clean.py --dataset kitti --mode clip --t 11

#python plot_para.py --bold --para w
#python plot_para.py --bold --para t
#python plot_para.py --bold --para ms
#python plot_para.py --bold --para e

#python plot_provable.py --dump_dir pro_dump8 --dataset voc --t 32 
#python plot_provable.py --dump_dir pro_dump8 --dataset coco --t 36
#python plot_provable.py --dump_dir pro_dump8 --dataset kitti --t 11