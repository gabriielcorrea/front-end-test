CSS = \
	public/css/styles.css

all: css

clean:
	rm -f $(CSS)

css: $(CSS)

%.css: %.less
	lessc $< > $@

.PHONY: all clean
