DEFAULT=se-early-logistics_0.0.x.zip

.PHONY: clean

clean: 
	rm ./se-early-logistics_*

se-early-logistics_0.0.*.zip: ./SE-Early-Logistics
	zip -r se-early-logistics_0.0.x.zip SE-Early-Logistics