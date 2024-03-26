
##############################################################
#
# AESD_ASSIGNMENT5PART2
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENT5PART2_VERSION = f9d175272c164c5b39ab776b57a30b3282fc4879
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

AESD_ASSIGNMENT5PART2_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-GAD8ras.git
AESD_ASSIGNMENT5PART2_SITE_METHOD = git
AESD_ASSIGNMENT5PART2_GIT_SUBMODULES = YES

define AESD_ASSIGNMENT5-PART2_BUILD_CMDS
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app build
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENT5PART2_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment5/* $(TARGET_DIR)/bin/
endef

$(eval $(generic-package))
