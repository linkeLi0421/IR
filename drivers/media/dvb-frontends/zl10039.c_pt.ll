; ModuleID = '/llk/IR/drivers/media/dvb-frontends/zl10039.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10039.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10039_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10039_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10039_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10039_state = type { ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\017%s\0A\00", align 1
@__func__.zl10039_attach = private unnamed_addr constant [15 x i8] c"zl10039_attach\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Zarlink ZL10039 DVB-S tuner\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\017Chip ID=%x does not match a known type\0A\00", align 1
@zl10039_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @zl10039_release, ptr @zl10039_init, ptr @zl10039_sleep, ptr null, ptr null, ptr @zl10039_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\017Tuner attached @ i2c address 0x%02x\0A\00", align 1
@__kstrtab_zl10039_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10039_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10039_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10039_attach to i32), ptr @__kstrtab_zl10039_attach, ptr @__kstrtabns_zl10039_attach }, section "___ksymtab+zl10039_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [47 x i8] c"description=Zarlink ZL10039 DVB-S tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [40 x i8] c"author=Jan D. Louw <jd.louw@mweb.co.za>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.zl10039_read = private unnamed_addr constant [13 x i8] c"zl10039_read\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\017%s: i2c read error\0A\00", align 1
@__func__.zl10039_release = private unnamed_addr constant [16 x i8] c"zl10039_release\00", align 1
@__func__.zl10039_init = private unnamed_addr constant [13 x i8] c"zl10039_init\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\017Note: i2c write error normal when resetting the tuner\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\017Tuner power up failed\0A\00", align 1
@__func__.zl10039_write = private unnamed_addr constant [14 x i8] c"zl10039_write\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\017%s: i2c write error\0A\00", align 1
@__func__.zl10039_sleep = private unnamed_addr constant [14 x i8] c"zl10039_sleep\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\017Tuner sleep failed\0A\00", align 1
@__func__.zl10039_set_params = private unnamed_addr constant [19 x i8] c"zl10039_set_params\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\017Set frequency = %d, symbol rate = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\017Error setting tuner\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_zl10039_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zl10039_attach(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_attach) #7
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14

14:                                               ; preds = %10
  store ptr %2, ptr %12, align 8
  %15 = getelementptr inbounds %struct.zl10039_state, ptr %12, i32 0, i32 1
  store i8 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %17(ptr noundef %0, i32 noundef 1) #9
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.zl10039_state, ptr %12, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 15, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %23 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %23, i8 0, i32 16, i1 false) #9, !annotation !8
  %24 = zext i8 %1 to i16
  store i16 %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %22, ptr %30, align 4
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_read) #7
  %35 = load ptr, ptr %12, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi ptr [ %35, %33 ], [ %2, %21 ]
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %5, i32 noundef 2) #9
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.zl10039_read) #7
  br label %45

45:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %46 = load ptr, ptr %16, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %45
  %49 = call i32 %46(ptr noundef %0, i32 noundef 0) #9
  br label %74

50:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %51 = load ptr, ptr %16, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 %51(ptr noundef %0, i32 noundef 0) #9
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i8, ptr %22, align 1
  %57 = and i8 %56, 15
  store i8 %57, ptr %22, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i8 %57, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  %62 = call i32 @strscpy(ptr noundef %61, ptr noundef nonnull @.str.1, i32 noundef 128) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %61, ptr noundef nonnull align 4 dereferenceable(220) @zl10039_ops, i32 220, i1 false)
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %12, ptr %63, align 4
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %71

66:                                               ; preds = %55
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %58) #7
  br label %74

71:                                               ; preds = %60
  %72 = zext i8 %1 to i32
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %72) #7
  br label %75

74:                                               ; preds = %69, %66, %48, %45, %10
  call void @kfree(ptr noundef %12) #9
  br label %75

75:                                               ; preds = %74, %71, %60
  %76 = phi ptr [ null, %74 ], [ %0, %71 ], [ %0, %60 ]
  ret ptr %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zl10039_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_release) #7
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10039_init(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_init) #7
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 1) #9
  br label %18

18:                                               ; preds = %16, %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %19 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.zl10039_state, ptr %7, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %24, align 4
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %29

29:                                               ; preds = %27, %18
  store i8 15, ptr %4, align 1
  %30 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 64, ptr %30, align 1
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %45

35:                                               ; preds = %29
  %36 = load i32, ptr @debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %45

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %45

45:                                               ; preds = %43, %39, %38, %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %46 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load i8, ptr %20, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %3, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %50, align 4
  %51 = load i32, ptr @debug, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %55

55:                                               ; preds = %53, %45
  store i8 15, ptr %2, align 1
  %56 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 1, ptr %56, align 1
  %57 = load ptr, ptr %7, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %3, i32 noundef 1) #9
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %75

64:                                               ; preds = %60
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  %66 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %75

70:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %71 = load ptr, ptr %13, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 %71(ptr noundef %0, i32 noundef 0) #9
  br label %75

75:                                               ; preds = %73, %70, %68, %64, %63
  %76 = phi i32 [ -121, %68 ], [ -121, %64 ], [ 0, %73 ], [ 0, %70 ], [ -121, %63 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10039_sleep(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_sleep) #7
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef 1) #9
  br label %16

16:                                               ; preds = %14, %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.zl10039_state, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %22, align 4
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %27

27:                                               ; preds = %25, %16
  store i8 15, ptr %2, align 1
  %28 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 -128, ptr %28, align 1
  %29 = load ptr, ptr %5, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #9
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %47

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  %38 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %47

42:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %43 = load ptr, ptr %11, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 %43(ptr noundef %0, i32 noundef 0) #9
  br label %47

47:                                               ; preds = %45, %42, %40, %36, %35
  %48 = phi i32 [ -121, %40 ], [ -121, %36 ], [ 0, %45 ], [ 0, %42 ], [ -121, %35 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10039_set_params(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_set_params) #7
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %18, i32 noundef %20) #7
  br label %22

22:                                               ; preds = %17, %13, %1
  %23 = load i32, ptr %8, align 4
  %24 = mul i32 %23, 1000
  %25 = udiv i32 %24, 126387
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, 27
  %29 = udiv i32 %28, 32000
  %30 = mul nuw nsw i32 %29, 5088
  %31 = udiv i32 %30, 1011100
  %32 = trunc i32 %31 to i8
  %33 = add i8 %32, -1
  %34 = lshr i32 %25, 8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 127
  %37 = trunc i32 %25 to i8
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %22
  %42 = tail call i32 %39(ptr noundef %0, i32 noundef 1) #9
  br label %43

43:                                               ; preds = %41, %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %44 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %44, align 4, !annotation !8
  %45 = getelementptr inbounds %struct.zl10039_state, ptr %10, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %7, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %49, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %54

54:                                               ; preds = %52, %43
  store i8 6, ptr %6, align 1
  %55 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  store i8 10, ptr %55, align 1
  %56 = load ptr, ptr %10, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %7, i32 noundef 1) #9
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %64

64:                                               ; preds = %62, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %117

65:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %66 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 7, ptr %66, align 4, !annotation !8
  %67 = load i8, ptr %45, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %70, align 4
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %75

75:                                               ; preds = %73, %65
  store i8 0, ptr %4, align 1
  %76 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 %36, ptr %76, align 1
  %77 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 2
  store i8 %37, ptr %77, align 1
  %78 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 3
  store i8 29, ptr %78, align 1
  %79 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 4
  store i8 64, ptr %79, align 1
  %80 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 5
  store i8 110, ptr %80, align 1
  %81 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 6
  store i8 %33, ptr %81, align 1
  %82 = load ptr, ptr %10, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %5, i32 noundef 1) #9
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %86 = load i32, ptr @debug, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %90

90:                                               ; preds = %88, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %117

91:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %92 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %92, align 4, !annotation !8
  %93 = load i8, ptr %45, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %3, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %96, align 4
  %97 = load i32, ptr @debug, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %91
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %101

101:                                              ; preds = %99, %91
  store i8 6, ptr %2, align 1
  %102 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  store i8 106, ptr %102, align 1
  %103 = load ptr, ptr %10, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %3, i32 noundef 1) #9
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr @debug, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.zl10039_write) #7
  br label %111

111:                                              ; preds = %109, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %117

112:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %113 = load ptr, ptr %38, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = call i32 %113(ptr noundef %0, i32 noundef 0) #9
  br label %122

117:                                              ; preds = %111, %90, %64
  %118 = load i32, ptr @debug, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %122

122:                                              ; preds = %120, %117, %115, %112
  %123 = phi i32 [ 0, %115 ], [ 0, %112 ], [ -121, %120 ], [ -121, %117 ]
  ret i32 %123
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }

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
