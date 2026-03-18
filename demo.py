from dotenv import load_dotenv
load_dotenv()



from src.pipline.training_pipeline import TrainPipeline

pipline = TrainPipeline()
pipline.run_pipeline()