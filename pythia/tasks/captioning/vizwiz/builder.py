from pythia.common.registry import registry
from pythia.tasks.vqa.vqa2 import VQA2Builder

from .dataset import VIZWIZDataset

@registry.register_builder("vizwiz")
class VIZWIZBuilder(VIZWIZBuilder):
    def __init__(self):
        super().__init__()
        self.dataset_name="vizwiz"
        self.set_dataset_class(VIZWIZDataset)

    def update_registry_for_model(self, config):
        registry.register(
            self.dataset_name + "_text_vocab_size",
            self.dataset.text_processor.get_vocab_size(),
        )
