; ModuleID = '/llk/IR/drivers/media/dvb-frontends/s921.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s921.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s921_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s921_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s921_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regdata = type { i8, i8 }
%struct.s921_bandselect_val = type { i32, i8 }
%struct.s921_state = type { ptr, ptr, %struct.dvb_frontend, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 1, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [52 x i8] c"parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"\017s921: %s: \00", align 1
@__func__.s921_attach = private unnamed_addr constant [12 x i8] c"s921_attach\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013s921: Unable to kzalloc\0A\00", align 1
@s921_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sharp S921\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 806000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr @s921_release, ptr null, ptr @s921_initfe, ptr null, ptr null, ptr null, ptr null, ptr @s921_tune, ptr @s921_get_algo, ptr @s921_set_frontend, ptr null, ptr @s921_get_frontend, ptr @s921_read_status, ptr null, ptr @s921_read_signal_strength, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_s921_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s921_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s921_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s921_attach to i32), ptr @__kstrtab_s921_attach, ptr @__kstrtabns_s921_attach }, section "___ksymtab+s921_attach", align 4
@__UNIQUE_ID_description251 = internal constant [56 x i8] c"description=DVB Frontend module for Sharp S921 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [29 x i8] c"author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [47 x i8] c"author=Douglas Landgraf <dougsland@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.s921_release = private unnamed_addr constant [13 x i8] c"s921_release\00", align 1
@__func__.s921_initfe = private unnamed_addr constant [12 x i8] c"s921_initfe\00", align 1
@s921_init = internal unnamed_addr constant [104 x %struct.regdata] [%struct.regdata { i8 1, i8 -128 }, %struct.regdata { i8 1, i8 64 }, %struct.regdata { i8 1, i8 -128 }, %struct.regdata { i8 1, i8 64 }, %struct.regdata { i8 2, i8 0 }, %struct.regdata { i8 3, i8 64 }, %struct.regdata { i8 4, i8 1 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 6, i8 0 }, %struct.regdata { i8 7, i8 0 }, %struct.regdata { i8 8, i8 0 }, %struct.regdata { i8 9, i8 0 }, %struct.regdata { i8 10, i8 0 }, %struct.regdata { i8 11, i8 90 }, %struct.regdata { i8 12, i8 0 }, %struct.regdata { i8 13, i8 0 }, %struct.regdata { i8 15, i8 0 }, %struct.regdata { i8 19, i8 27 }, %struct.regdata { i8 20, i8 -128 }, %struct.regdata { i8 21, i8 64 }, %struct.regdata { i8 23, i8 112 }, %struct.regdata { i8 24, i8 1 }, %struct.regdata { i8 25, i8 18 }, %struct.regdata { i8 26, i8 1 }, %struct.regdata { i8 27, i8 18 }, %struct.regdata { i8 28, i8 -96 }, %struct.regdata { i8 29, i8 0 }, %struct.regdata { i8 30, i8 10 }, %struct.regdata { i8 31, i8 8 }, %struct.regdata { i8 32, i8 64 }, %struct.regdata { i8 33, i8 -1 }, %struct.regdata { i8 34, i8 76 }, %struct.regdata { i8 35, i8 78 }, %struct.regdata { i8 36, i8 76 }, %struct.regdata { i8 37, i8 0 }, %struct.regdata { i8 38, i8 0 }, %struct.regdata { i8 39, i8 -12 }, %struct.regdata { i8 40, i8 96 }, %struct.regdata { i8 41, i8 -120 }, %struct.regdata { i8 42, i8 64 }, %struct.regdata { i8 43, i8 64 }, %struct.regdata { i8 44, i8 -1 }, %struct.regdata { i8 45, i8 0 }, %struct.regdata { i8 46, i8 -1 }, %struct.regdata { i8 47, i8 0 }, %struct.regdata { i8 48, i8 32 }, %struct.regdata { i8 49, i8 6 }, %struct.regdata { i8 50, i8 12 }, %struct.regdata { i8 52, i8 15 }, %struct.regdata { i8 55, i8 -2 }, %struct.regdata { i8 56, i8 0 }, %struct.regdata { i8 57, i8 99 }, %struct.regdata { i8 58, i8 16 }, %struct.regdata { i8 59, i8 16 }, %struct.regdata { i8 71, i8 0 }, %struct.regdata { i8 73, i8 -27 }, %struct.regdata { i8 75, i8 0 }, %struct.regdata { i8 80, i8 -64 }, %struct.regdata { i8 82, i8 32 }, %struct.regdata { i8 84, i8 90 }, %struct.regdata { i8 85, i8 91 }, %struct.regdata { i8 86, i8 64 }, %struct.regdata { i8 87, i8 112 }, %struct.regdata { i8 92, i8 80 }, %struct.regdata { i8 93, i8 0 }, %struct.regdata { i8 98, i8 23 }, %struct.regdata { i8 99, i8 47 }, %struct.regdata { i8 100, i8 111 }, %struct.regdata { i8 104, i8 0 }, %struct.regdata { i8 105, i8 -119 }, %struct.regdata { i8 106, i8 0 }, %struct.regdata { i8 107, i8 0 }, %struct.regdata { i8 108, i8 0 }, %struct.regdata { i8 109, i8 0 }, %struct.regdata { i8 110, i8 0 }, %struct.regdata { i8 112, i8 16 }, %struct.regdata { i8 113, i8 0 }, %struct.regdata { i8 117, i8 0 }, %struct.regdata { i8 118, i8 48 }, %struct.regdata { i8 119, i8 1 }, %struct.regdata { i8 -81, i8 0 }, %struct.regdata { i8 -80, i8 -96 }, %struct.regdata { i8 -78, i8 61 }, %struct.regdata { i8 -77, i8 37 }, %struct.regdata { i8 -76, i8 -117 }, %struct.regdata { i8 -75, i8 75 }, %struct.regdata { i8 -74, i8 63 }, %struct.regdata { i8 -73, i8 -1 }, %struct.regdata { i8 -72, i8 -1 }, %struct.regdata { i8 -71, i8 -4 }, %struct.regdata { i8 -70, i8 0 }, %struct.regdata { i8 -69, i8 0 }, %struct.regdata { i8 -68, i8 0 }, %struct.regdata { i8 -48, i8 48 }, %struct.regdata { i8 -28, i8 -124 }, %struct.regdata { i8 -16, i8 72 }, %struct.regdata { i8 -15, i8 25 }, %struct.regdata { i8 -14, i8 90 }, %struct.regdata { i8 -13, i8 -114 }, %struct.regdata { i8 -12, i8 45 }, %struct.regdata { i8 -11, i8 7 }, %struct.regdata { i8 -10, i8 90 }, %struct.regdata { i8 -9, i8 -70 }, %struct.regdata { i8 -8, i8 -41 }], align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%s: writereg rcor(rc == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.s921_i2c_writereg = private unnamed_addr constant [18 x i8] c"s921_i2c_writereg\00", align 1
@__func__.s921_tune = private unnamed_addr constant [10 x i8] c"s921_tune\00", align 1
@__func__.s921_set_frontend = private unnamed_addr constant [18 x i8] c"s921_set_frontend\00", align 1
@__func__.s921_pll_tune = private unnamed_addr constant [14 x i8] c"s921_pll_tune\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"frequency=%i\0A\00", align 1
@s921_bandselect = internal unnamed_addr constant [8 x %struct.s921_bandselect_val] [%struct.s921_bandselect_val { i32 0, i8 123 }, %struct.s921_bandselect_val { i32 485140000, i8 91 }, %struct.s921_bandselect_val { i32 515140000, i8 59 }, %struct.s921_bandselect_val { i32 545140000, i8 27 }, %struct.s921_bandselect_val { i32 599140000, i8 -5 }, %struct.s921_bandselect_val { i32 623140000, i8 -37 }, %struct.s921_bandselect_val { i32 659140000, i8 -69 }, %struct.s921_bandselect_val { i32 713140000, i8 -101 }], align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"status 0x80: %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"status 0x01: %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"status 0x32: %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"pll tune band=%d, pll=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\013s921: %s: reg=0x%x (rcor=%d)\0A\00", align 1
@__func__.s921_i2c_readreg = private unnamed_addr constant [17 x i8] c"s921_i2c_readreg\00", align 1
@__func__.s921_read_status = private unnamed_addr constant [17 x i8] c"s921_read_status\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"status = %04x\0A\00", align 1
@__func__.s921_read_signal_strength = private unnamed_addr constant [26 x i8] c"s921_read_signal_strength\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"strength = 0x%04x\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_s921_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @s921_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1052) #9
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_attach) #10
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.s921_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %1, ptr %4, align 8
  %16 = getelementptr inbounds %struct.s921_state, ptr %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.s921_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %17, ptr noundef nonnull align 4 dereferenceable(544) @s921_ops, i32 544, i1 false)
  %18 = getelementptr inbounds %struct.s921_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %18, align 8
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi ptr [ %16, %14 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s921_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_release) #10
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %9

9:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s921_initfe(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_initfe) #10
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.s921_state, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds i8, ptr %2, i32 1
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  %17 = zext i8 %14 to i16
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %20

20:                                               ; preds = %35, %11
  %21 = phi i32 [ 0, %11 ], [ %36, %35 ]
  %22 = getelementptr %struct.regdata, ptr @s921_init, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr %struct.regdata, ptr @s921_init, i32 %21, i32 1
  %25 = load i8, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 %23, ptr %2, align 2
  store i8 %25, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  store i32 2, ptr %16, align 4, !annotation !8
  store i16 %17, ptr %3, align 4
  store i16 0, ptr %18, align 2
  store ptr %2, ptr %19, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %3, i32 noundef 1) #11
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %35

30:                                               ; preds = %20
  %31 = zext i8 %25 to i32
  %32 = zext i8 %23 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %27, i32 noundef %32, i32 noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %34 = icmp slt i32 %27, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %29
  %36 = add nuw nsw i32 %21, 1
  %37 = icmp eq i32 %36, 104
  br i1 %37, label %38, label %20

38:                                               ; preds = %35, %30
  %39 = phi i32 [ 0, %35 ], [ %27, %30 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s921_tune(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_tune) #10
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %8, %5
  br i1 %1, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call i32 @s921_set_frontend(ptr noundef %0)
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %13, %12 ], [ 0, %11 ]
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @s921_read_status(ptr noundef %0, ptr noundef %4)
  br label %20

20:                                               ; preds = %18, %14
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s921_get_algo(ptr nocapture noundef readnone %0) #5 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s921_set_frontend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %1
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_set_frontend) #10
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %37 = load i32, ptr @debug, align 4
  %38 = load ptr, ptr %30, align 4
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %42 = load i32, ptr %29, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %42) #10
  br label %44

44:                                               ; preds = %40, %34, %1
  %45 = phi ptr [ %38, %40 ], [ %38, %34 ], [ %31, %1 ]
  %46 = load i32, ptr %29, align 4
  %47 = icmp ult i32 %46, 485140000
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = icmp ult i32 %46, 515140000
  br i1 %49, label %61, label %50

50:                                               ; preds = %48
  %51 = icmp ult i32 %46, 545140000
  br i1 %51, label %61, label %52

52:                                               ; preds = %50
  %53 = icmp ult i32 %46, 599140000
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %46, 623140000
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = icmp ult i32 %46, 659140000
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  %59 = icmp ult i32 %46, 713140000
  %60 = select i1 %59, i32 6, i32 7
  br label %61

61:                                               ; preds = %58, %56, %54, %52, %50, %48, %44
  %62 = phi i32 [ 0, %44 ], [ 1, %48 ], [ 2, %50 ], [ 3, %52 ], [ 4, %54 ], [ 5, %56 ], [ %60, %58 ]
  %63 = getelementptr [8 x %struct.s921_bandselect_val], ptr @s921_bandselect, i32 0, i32 %62, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = zext i32 %46 to i64
  %66 = mul nuw nsw i64 %65, 258
  %67 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %66, i32 0) #12, !srcloc !9
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = extractvalue { i64, i32 } %67, 1
  %70 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %66, i64 %68, i32 %69) #12, !srcloc !10
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 22
  %73 = trunc i64 %72 to i32
  %74 = add i32 %73, 2321
  %75 = getelementptr inbounds %struct.s921_state, ptr %45, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds i8, ptr %27, i32 1
  %79 = getelementptr inbounds i8, ptr %28, i32 4
  %80 = zext i8 %77 to i16
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 71, ptr %27, align 2
  store i8 96, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %79, align 4, !annotation !8
  store i16 %80, ptr %28, align 4
  store i16 0, ptr %81, align 2
  store ptr %27, ptr %82, align 4
  %83 = load ptr, ptr %45, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %28, i32 noundef 1) #11
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %90

87:                                               ; preds = %61
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %84, i32 noundef 71, i32 noundef 96) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %89 = icmp slt i32 %84, 0
  br i1 %89, label %396, label %90

90:                                               ; preds = %87, %86
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 104, ptr %27, align 2
  store i8 0, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %79, align 4, !annotation !8
  store i16 %80, ptr %28, align 4
  store i16 0, ptr %81, align 2
  store ptr %27, ptr %82, align 4
  %91 = load ptr, ptr %45, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %28, i32 noundef 1) #11
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %92, i32 noundef 104, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %96 = icmp slt i32 %92, 0
  br i1 %96, label %396, label %98

97:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %98

98:                                               ; preds = %97, %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 105, ptr %27, align 2
  store i8 -119, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %79, align 4, !annotation !8
  store i16 %80, ptr %28, align 4
  store i16 0, ptr %81, align 2
  store ptr %27, ptr %82, align 4
  %99 = load ptr, ptr %45, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %28, i32 noundef 1) #11
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %100, i32 noundef 105, i32 noundef 137) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %104 = icmp slt i32 %100, 0
  br i1 %104, label %396, label %106

105:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %106

106:                                              ; preds = %105, %102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 -16, ptr %27, align 2
  store i8 72, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %79, align 4, !annotation !8
  store i16 %80, ptr %28, align 4
  store i16 0, ptr %81, align 2
  store ptr %27, ptr %82, align 4
  %107 = load ptr, ptr %45, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %28, i32 noundef 1) #11
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %108, i32 noundef 240, i32 noundef 72) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %112 = icmp slt i32 %108, 0
  br i1 %112, label %396, label %114

113:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %114

114:                                              ; preds = %113, %110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 -15, ptr %27, align 2
  store i8 25, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %79, align 4, !annotation !8
  store i16 %80, ptr %28, align 4
  store i16 0, ptr %81, align 2
  store ptr %27, ptr %82, align 4
  %115 = load ptr, ptr %45, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %28, i32 noundef 1) #11
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %116, i32 noundef 241, i32 noundef 25) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %120 = icmp slt i32 %116, 0
  br i1 %120, label %396, label %122

121:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %122

122:                                              ; preds = %121, %118
  %123 = load ptr, ptr %75, align 4
  %124 = load i8, ptr %123, align 1
  %125 = lshr i32 %74, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #11
  store i8 -14, ptr %25, align 2
  %126 = getelementptr inbounds i8, ptr %25, i32 1
  %127 = trunc i32 %125 to i8
  store i8 %127, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %128 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %128, align 4, !annotation !8
  %129 = zext i8 %124 to i16
  store i16 %129, ptr %26, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %131, align 4
  %132 = load ptr, ptr %45, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %26, i32 noundef 1) #11
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  br label %140

136:                                              ; preds = %122
  %137 = and i32 %125, 255
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %133, i32 noundef 242, i32 noundef %137) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  %139 = icmp slt i32 %133, 0
  br i1 %139, label %396, label %140

140:                                              ; preds = %136, %135
  %141 = load ptr, ptr %75, align 4
  %142 = load i8, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #11
  store i8 -13, ptr %23, align 2
  %143 = getelementptr inbounds i8, ptr %23, i32 1
  %144 = trunc i32 %74 to i8
  store i8 %144, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %145 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %145, align 4, !annotation !8
  %146 = zext i8 %142 to i16
  store i16 %146, ptr %24, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %148, align 4
  %149 = load ptr, ptr %45, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %24, i32 noundef 1) #11
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  br label %157

153:                                              ; preds = %140
  %154 = and i32 %74, 255
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %150, i32 noundef 243, i32 noundef %154) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  %156 = icmp slt i32 %150, 0
  br i1 %156, label %396, label %157

157:                                              ; preds = %153, %152
  %158 = load ptr, ptr %75, align 4
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %64 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  store i8 -12, ptr %21, align 2
  %161 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %64, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %162 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %162, align 4, !annotation !8
  %163 = zext i8 %159 to i16
  store i16 %163, ptr %22, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %164, align 2
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %165, align 4
  %166 = load ptr, ptr %45, align 4
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %22, i32 noundef 1) #11
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  br label %173

170:                                              ; preds = %157
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %167, i32 noundef 244, i32 noundef %160) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %172 = icmp slt i32 %167, 0
  br i1 %172, label %396, label %173

173:                                              ; preds = %170, %169
  %174 = load ptr, ptr %75, align 4
  %175 = load i8, ptr %174, align 1
  %176 = getelementptr inbounds i8, ptr %19, i32 1
  %177 = getelementptr inbounds i8, ptr %20, i32 4
  %178 = zext i8 %175 to i16
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 -11, ptr %19, align 2
  store i8 -82, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %181 = load ptr, ptr %45, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %20, i32 noundef 1) #11
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %188

185:                                              ; preds = %173
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %182, i32 noundef 245, i32 noundef 174) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %187 = icmp slt i32 %182, 0
  br i1 %187, label %396, label %188

188:                                              ; preds = %185, %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 -10, ptr %19, align 2
  store i8 -73, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %189 = load ptr, ptr %45, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %20, i32 noundef 1) #11
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %190, i32 noundef 246, i32 noundef 183) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %194 = icmp slt i32 %190, 0
  br i1 %194, label %396, label %196

195:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %196

196:                                              ; preds = %195, %192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 -9, ptr %19, align 2
  store i8 -70, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %197 = load ptr, ptr %45, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %20, i32 noundef 1) #11
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %198, i32 noundef 247, i32 noundef 186) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %202 = icmp slt i32 %198, 0
  br i1 %202, label %396, label %204

203:                                              ; preds = %196
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %204

204:                                              ; preds = %203, %200
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 -8, ptr %19, align 2
  store i8 -41, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %205 = load ptr, ptr %45, align 4
  %206 = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %20, i32 noundef 1) #11
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %206, i32 noundef 248, i32 noundef 215) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %210 = icmp slt i32 %206, 0
  br i1 %210, label %396, label %212

211:                                              ; preds = %204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %212

212:                                              ; preds = %211, %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 104, ptr %19, align 2
  store i8 10, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %213 = load ptr, ptr %45, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %20, i32 noundef 1) #11
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %214, i32 noundef 104, i32 noundef 10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %218 = icmp slt i32 %214, 0
  br i1 %218, label %396, label %220

219:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %220

220:                                              ; preds = %219, %216
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 105, ptr %19, align 2
  store i8 9, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %177, align 4, !annotation !8
  store i16 %178, ptr %20, align 4
  store i16 0, ptr %179, align 2
  store ptr %19, ptr %180, align 4
  %221 = load ptr, ptr %45, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %20, i32 noundef 1) #11
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %227, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %222, i32 noundef 105, i32 noundef 9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %226 = icmp slt i32 %222, 0
  br i1 %226, label %396, label %228

227:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %228

228:                                              ; preds = %227, %224
  %229 = getelementptr inbounds i8, ptr %18, i32 4
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  br label %236

236:                                              ; preds = %258, %228
  %237 = phi i32 [ 0, %228 ], [ %259, %258 ]
  %238 = load ptr, ptr %75, align 4
  %239 = load i8, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 -128, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #11
  store i8 0, ptr %17, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %229, i8 0, i32 16, i1 false) #11, !annotation !8
  %240 = zext i8 %239 to i16
  store i16 %240, ptr %18, align 4
  store i16 0, ptr %230, align 2
  store i16 1, ptr %229, align 4
  store ptr %16, ptr %231, align 4
  store i16 %240, ptr %232, align 4
  store i16 1, ptr %233, align 2
  store i16 1, ptr %234, align 4
  store ptr %17, ptr %235, align 4
  %241 = load ptr, ptr %45, align 4
  %242 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %18, i32 noundef 2) #11
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %248, label %244

244:                                              ; preds = %236
  %245 = load i8, ptr %16, align 1
  %246 = zext i8 %245 to i32
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %246, i32 noundef %242) #10
  br label %251

248:                                              ; preds = %236
  %249 = load i8, ptr %17, align 1
  %250 = zext i8 %249 to i32
  br label %251

251:                                              ; preds = %248, %244
  %252 = phi i32 [ %242, %244 ], [ %250, %248 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %252) #10
  br label %258

258:                                              ; preds = %255, %251
  %259 = add nuw nsw i32 %237, 1
  %260 = icmp eq i32 %259, 6
  br i1 %260, label %261, label %236

261:                                              ; preds = %258
  %262 = load ptr, ptr %75, align 4
  %263 = load i8, ptr %262, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #11
  store i8 1, ptr %14, align 2
  %264 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 64, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %265 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %265, align 4, !annotation !8
  %266 = zext i8 %263 to i16
  store i16 %266, ptr %15, align 4
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %267, align 2
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %268, align 4
  %269 = load ptr, ptr %45, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %15, i32 noundef 1) #11
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  br label %276

273:                                              ; preds = %261
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s921_i2c_writereg, i32 noundef %270, i32 noundef 1, i32 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  %275 = icmp slt i32 %270, 0
  br i1 %275, label %396, label %276

276:                                              ; preds = %273, %272
  %277 = load ptr, ptr %75, align 4
  %278 = load i8, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 1, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  %279 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %279, i8 0, i32 16, i1 false) #11, !annotation !8
  %280 = zext i8 %278 to i16
  store i16 %280, ptr %13, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %281, align 2
  store i16 1, ptr %279, align 4
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %282, align 4
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %280, ptr %283, align 4
  %284 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %284, align 2
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %285, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %286, align 4
  %287 = load ptr, ptr %45, align 4
  %288 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %13, i32 noundef 2) #11
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %294, label %290

290:                                              ; preds = %276
  %291 = load i8, ptr %11, align 1
  %292 = zext i8 %291 to i32
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %292, i32 noundef %288) #10
  br label %297

294:                                              ; preds = %276
  %295 = load i8, ptr %12, align 1
  %296 = zext i8 %295 to i32
  br label %297

297:                                              ; preds = %294, %290
  %298 = phi i32 [ %288, %290 ], [ %296, %294 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  %299 = load i32, ptr @debug, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %297
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %298) #10
  br label %304

304:                                              ; preds = %301, %297
  %305 = load ptr, ptr %75, align 4
  %306 = load i8, ptr %305, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 -128, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  %307 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %307, i8 0, i32 16, i1 false) #11, !annotation !8
  %308 = zext i8 %306 to i16
  store i16 %308, ptr %10, align 4
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %309, align 2
  store i16 1, ptr %307, align 4
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %310, align 4
  %311 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %308, ptr %311, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %312, align 2
  %313 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %313, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %314, align 4
  %315 = load ptr, ptr %45, align 4
  %316 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %10, i32 noundef 2) #11
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %322, label %318

318:                                              ; preds = %304
  %319 = load i8, ptr %8, align 1
  %320 = zext i8 %319 to i32
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %320, i32 noundef %316) #10
  br label %325

322:                                              ; preds = %304
  %323 = load i8, ptr %9, align 1
  %324 = zext i8 %323 to i32
  br label %325

325:                                              ; preds = %322, %318
  %326 = phi i32 [ %316, %318 ], [ %324, %322 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  %327 = load i32, ptr @debug, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %325
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %326) #10
  br label %332

332:                                              ; preds = %329, %325
  %333 = load ptr, ptr %75, align 4
  %334 = load i8, ptr %333, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 -128, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %335 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %335, i8 0, i32 16, i1 false) #11, !annotation !8
  %336 = zext i8 %334 to i16
  store i16 %336, ptr %7, align 4
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %337, align 2
  store i16 1, ptr %335, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %338, align 4
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %336, ptr %339, align 4
  %340 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %340, align 2
  %341 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %341, align 4
  %342 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %342, align 4
  %343 = load ptr, ptr %45, align 4
  %344 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %7, i32 noundef 2) #11
  %345 = icmp eq i32 %344, 2
  br i1 %345, label %350, label %346

346:                                              ; preds = %332
  %347 = load i8, ptr %5, align 1
  %348 = zext i8 %347 to i32
  %349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %348, i32 noundef %344) #10
  br label %353

350:                                              ; preds = %332
  %351 = load i8, ptr %6, align 1
  %352 = zext i8 %351 to i32
  br label %353

353:                                              ; preds = %350, %346
  %354 = phi i32 [ %344, %346 ], [ %352, %350 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  %355 = load i32, ptr @debug, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %354) #10
  br label %360

360:                                              ; preds = %357, %353
  %361 = load ptr, ptr %75, align 4
  %362 = load i8, ptr %361, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 50, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %363 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %363, i8 0, i32 16, i1 false) #11, !annotation !8
  %364 = zext i8 %362 to i16
  store i16 %364, ptr %4, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %365, align 2
  store i16 1, ptr %363, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %366, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %364, ptr %367, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %368, align 2
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %369, align 4
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %370, align 4
  %371 = load ptr, ptr %45, align 4
  %372 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %4, i32 noundef 2) #11
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %378, label %374

374:                                              ; preds = %360
  %375 = load i8, ptr %2, align 1
  %376 = zext i8 %375 to i32
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %376, i32 noundef %372) #10
  br label %381

378:                                              ; preds = %360
  %379 = load i8, ptr %3, align 1
  %380 = zext i8 %379 to i32
  br label %381

381:                                              ; preds = %378, %374
  %382 = phi i32 [ %372, %374 ], [ %380, %378 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %383 = load i32, ptr @debug, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %381
  %386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %387 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %382) #10
  %388 = load i32, ptr @debug, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %385
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_pll_tune) #10
  %392 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %160, i32 noundef %74) #10
  br label %393

393:                                              ; preds = %390, %385, %381
  %394 = load i32, ptr %29, align 4
  %395 = getelementptr inbounds %struct.s921_state, ptr %31, i32 0, i32 3
  store i32 %394, ptr %395, align 4
  br label %396

396:                                              ; preds = %393, %273, %224, %216, %208, %200, %192, %185, %170, %153, %136, %118, %110, %102, %94, %87
  %397 = phi i32 [ 0, %393 ], [ %116, %118 ], [ %108, %110 ], [ %100, %102 ], [ %92, %94 ], [ %84, %87 ], [ %222, %224 ], [ %214, %216 ], [ %206, %208 ], [ %198, %200 ], [ %190, %192 ], [ %182, %185 ], [ %270, %273 ], [ %167, %170 ], [ %150, %153 ], [ %133, %136 ]
  ret i32 %397
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s921_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s921_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  store i32 8, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s921_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  store i32 0, ptr %1, align 4
  %11 = getelementptr inbounds %struct.s921_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 -127, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #11, !annotation !8
  %15 = zext i8 %13 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %21, align 4
  %22 = load ptr, ptr %10, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 2) #11
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8, ptr %7, align 1
  %27 = zext i8 %26 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %33

28:                                               ; preds = %2
  %29 = load i8, ptr %6, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %30, i32 noundef %23) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %32 = icmp slt i32 %23, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %28, %25
  %34 = phi i32 [ %27, %25 ], [ %23, %28 ]
  %35 = load ptr, ptr %11, align 4
  %36 = load i8, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 -126, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #11, !annotation !8
  %38 = zext i8 %36 to i16
  store i16 %38, ptr %5, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 1, ptr %37, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %38, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %44, align 4
  %45 = load ptr, ptr %10, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %5, i32 noundef 2) #11
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i8, ptr %4, align 1
  %50 = zext i8 %49 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %56

51:                                               ; preds = %33
  %52 = load i8, ptr %3, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %53, i32 noundef %46) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %55 = icmp slt i32 %46, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %50, %48 ], [ %46, %51 ]
  %58 = load i32, ptr @debug, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = shl i32 %34, 8
  %62 = or i32 %57, %61
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_read_status) #10
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %62) #10
  br label %65

65:                                               ; preds = %60, %56
  %66 = and i32 %57, 255
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = and i32 %57, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %65
  %72 = phi i32 [ 31, %65 ], [ 15, %68 ]
  store i32 %72, ptr %1, align 4
  br label %73

73:                                               ; preds = %71, %68, %51, %28
  %74 = phi i32 [ %23, %28 ], [ %46, %51 ], [ 0, %68 ], [ 0, %71 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s921_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @s921_read_status(ptr noundef %0, ptr noundef nonnull %12)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %114, label %17

17:                                               ; preds = %2
  %18 = load i32, ptr %12, align 4
  %19 = shl i32 %18, 27
  %20 = ashr i32 %19, 31
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %1, align 2
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_read_signal_strength) #10
  %26 = load i16, ptr %1, align 2
  %27 = zext i16 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %27) #10
  br label %29

29:                                               ; preds = %24, %17
  %30 = getelementptr inbounds %struct.s921_state, ptr %14, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 1, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %33 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #11, !annotation !8
  %34 = zext i8 %32 to i16
  store i16 %34, ptr %11, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %35, align 2
  store i16 1, ptr %33, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %40, align 4
  %41 = load ptr, ptr %14, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %11, i32 noundef 2) #11
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = load i8, ptr %9, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %46, i32 noundef %42) #10
  br label %51

48:                                               ; preds = %29
  %49 = load i8, ptr %10, align 1
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %42, %44 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_read_signal_strength) #10
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %52) #10
  br label %58

58:                                               ; preds = %55, %51
  %59 = load ptr, ptr %30, align 4
  %60 = load i8, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 -128, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %61 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %61, i8 0, i32 16, i1 false) #11, !annotation !8
  %62 = zext i8 %60 to i16
  store i16 %62, ptr %8, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %63, align 2
  store i16 1, ptr %61, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %62, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %68, align 4
  %69 = load ptr, ptr %14, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %8, i32 noundef 2) #11
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %76, label %72

72:                                               ; preds = %58
  %73 = load i8, ptr %6, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %74, i32 noundef %70) #10
  br label %79

76:                                               ; preds = %58
  %77 = load i8, ptr %7, align 1
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %70, %72 ], [ %78, %76 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_read_signal_strength) #10
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %80) #10
  br label %86

86:                                               ; preds = %83, %79
  %87 = load ptr, ptr %30, align 4
  %88 = load i8, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 50, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %89 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %89, i8 0, i32 16, i1 false) #11, !annotation !8
  %90 = zext i8 %88 to i16
  store i16 %90, ptr %5, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %91, align 2
  store i16 1, ptr %89, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %92, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %90, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %95, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %96, align 4
  %97 = load ptr, ptr %14, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %5, i32 noundef 2) #11
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %104, label %100

100:                                              ; preds = %86
  %101 = load i8, ptr %3, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s921_i2c_readreg, i32 noundef %102, i32 noundef %98) #10
  br label %107

104:                                              ; preds = %86
  %105 = load i8, ptr %4, align 1
  %106 = zext i8 %105 to i32
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i32 [ %98, %100 ], [ %106, %104 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %109 = load i32, ptr @debug, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s921_read_signal_strength) #10
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %108) #10
  br label %114

114:                                              ; preds = %111, %107, %2
  %115 = phi i32 [ %15, %2 ], [ 0, %111 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
!9 = !{i64 849590, i64 849617, i64 849639, i64 849667}
!10 = !{i64 849998, i64 850025, i64 850058, i64 850079, i64 850106, i64 850132}
