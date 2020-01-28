LINT		:= cpplint
LINTFLAGS	:= --repository=. --recursive --extensions=c,h --quiet
LINTFLAGS	+= --filter=-build/include_subdir

.PHONY: lint 
lint:	$(SRCS) $(HDRS) ## Run cpplint over project files
	@$(LINT) $(LINTFLAGS) include lib src

