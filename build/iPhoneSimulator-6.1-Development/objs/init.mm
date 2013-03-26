#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_81C3776DCABC4911A58F8901ACBADB2C(void *, void *);
void MREP_06BFB17A6A084759A9EC031683763CC0(void *, void *);
void MREP_E5A9B60B1F5F483AA4A0C2609EA17689(void *, void *);
void MREP_8814CF29B13142ACA5E33A30C4146A73(void *, void *);
void MREP_FDC7A0F76F18400E8103D523BEC5CD5A(void *, void *);
void MREP_FB2F6A259CED436B8F0486EFA465649A(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_81C3776DCABC4911A58F8901ACBADB2C(self, 0);
MREP_06BFB17A6A084759A9EC031683763CC0(self, 0);
MREP_E5A9B60B1F5F483AA4A0C2609EA17689(self, 0);
MREP_8814CF29B13142ACA5E33A30C4146A73(self, 0);
MREP_FDC7A0F76F18400E8103D523BEC5CD5A(self, 0);
MREP_FB2F6A259CED436B8F0486EFA465649A(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
