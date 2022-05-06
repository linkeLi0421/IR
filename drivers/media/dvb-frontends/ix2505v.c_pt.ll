; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ix2505v.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ix2505v.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ix2505v_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ix2505v_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ix2505v_attach:\09\09\09\09\09"
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
%struct.ix2505v_state = type { ptr, ptr, i32 }
%struct.ix2505v_config = type { i8, i8, i8, i32, i8 }
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

@ix2505v_debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\017ix2505v: %s: no config \00", align 1
@__func__.ix2505v_attach = private unnamed_addr constant [15 x i8] c"ix2505v_attach\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\017ix2505v: %s: No IX2505V found\0A\00", align 1
@ix2505v_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sharp IX2505V (B0017)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2119967296, i32 0, i32 0, i32 0, i32 0 }, ptr @ix2505v_release, ptr null, ptr null, ptr null, ptr null, ptr @ix2505v_set_params, ptr null, ptr null, ptr @ix2505v_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"\017ix2505v: %s: initialization (%s addr=0x%02x) ok\0A\00", align 1
@__kstrtab_ix2505v_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ix2505v_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ix2505v_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ix2505v_attach to i32), ptr @__kstrtab_ix2505v_attach, ptr @__kstrtabns_ix2505v_attach }, section "___ksymtab+ix2505v_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @ix2505v_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [37 x i8] c"description=DVB IX2505V tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [25 x i8] c"author=Malcolm Priestley\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"\017ix2505v: Read %s \00", align 1
@__func__.ix2505v_read_status_reg = private unnamed_addr constant [24 x i8] c"ix2505v_read_status_reg\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\017ix2505v: Frq=%d x=%d N=%d A=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\017ix2505v: Osc=%x b_w=%x lpf=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\017ix2505v: Data 0=[%4phN]\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\017ix2505v: Data 2=[%x%x]\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\017ix2505v: %s: i2c error, ret=%d\0A\00", align 1
@__func__.ix2505v_write = private unnamed_addr constant [14 x i8] c"ix2505v_write\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_ix2505v_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ix2505v_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr @ix2505v_debug, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %66, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ix2505v_attach) #8
  br label %66

13:                                               ; preds = %3
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ix2505v_state, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  store ptr %2, ptr %15, align 8
  %19 = getelementptr inbounds %struct.ix2505v_config, ptr %1, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef 1) #10
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i8, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %30 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 1, ptr %30, align 4, !annotation !8
  %31 = zext i8 %29 to i16
  store i16 %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1) #10
  %35 = load i32, ptr @ix2505v_debug, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ix2505v_read_status_reg) #8
  br label %40

40:                                               ; preds = %38, %28
  %41 = icmp eq i32 %34, 1
  %42 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %43 = icmp sgt i8 %42, -1
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr @ix2505v_debug, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ix2505v_attach) #8
  br label %66

51:                                               ; preds = %40
  %52 = load ptr, ptr %23, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 %52(ptr noundef %0, i32 noundef 0) #10
  br label %56

56:                                               ; preds = %54, %51, %17
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %15, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %58, ptr noundef nonnull align 4 dereferenceable(220) @ix2505v_tuner_ops, i32 220, i1 false)
  %59 = load i32, ptr @ix2505v_debug, align 4
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8, ptr %1, align 4
  %64 = zext i8 %63 to i32
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ix2505v_attach, ptr noundef %58, i32 noundef %64) #8
  br label %68

66:                                               ; preds = %49, %45, %11, %7
  %67 = phi ptr [ null, %11 ], [ null, %7 ], [ %15, %49 ], [ %15, %45 ]
  call void @kfree(ptr noundef %67) #10
  br label %68

68:                                               ; preds = %66, %62, %56, %13
  %69 = phi ptr [ null, %66 ], [ null, %13 ], [ %0, %62 ], [ %0, %56 ]
  ret ptr %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ix2505v_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ix2505v_set_params(ptr noundef %0) #0 {
  %2 = alloca [1 x %struct.i2c_msg], align 4
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [1 x %struct.i2c_msg], align 4
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 27
  %13 = udiv i32 %12, 32000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = udiv i32 %15, 1000
  %17 = icmp ult i32 %9, %16
  br i1 %17, label %207, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %20, 1000
  %22 = icmp ugt i32 %9, %21
  br i1 %22, label %207, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ix2505v_state, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ix2505v_config, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = tail call i8 @llvm.umin.i8(i8 %27, i8 4)
  %30 = getelementptr inbounds %struct.ix2505v_config, ptr %25, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 0
  %33 = shl i32 %9, 3
  %34 = udiv i32 %33, 1280
  %35 = udiv i32 %33, 128000
  %36 = mul i32 %35, 134217628
  %37 = add i32 %36, %34
  %38 = shl i32 %37, 5
  %39 = udiv i32 %38, 100
  %40 = shl nuw i8 %29, 5
  %41 = and i8 %40, 96
  %42 = select i1 %28, i8 0, i8 %41
  %43 = lshr i32 %35, 3
  %44 = trunc i32 %43 to i8
  %45 = or i8 %42, %44
  store i8 %45, ptr %5, align 4
  %46 = shl nuw nsw i32 %35, 5
  %47 = and i32 %39, 31
  %48 = or i32 %47, %46
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %49, ptr %50, align 1
  %51 = shl i8 %31, 5
  %52 = or i8 %51, -127
  %53 = select i1 %32, i8 -31, i8 %52
  %54 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %53, ptr %54, align 2
  %55 = load i32, ptr @ix2505v_debug, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %23
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %34, i32 noundef %35, i32 noundef %39) #8
  br label %60

60:                                               ; preds = %58, %23
  %61 = icmp ult i32 %9, 1065001
  br i1 %61, label %75, label %62

62:                                               ; preds = %60
  %63 = icmp ult i32 %9, 1170001
  br i1 %63, label %75, label %64

64:                                               ; preds = %62
  %65 = icmp ult i32 %9, 1300001
  br i1 %65, label %75, label %66

66:                                               ; preds = %64
  %67 = icmp ult i32 %9, 1445001
  br i1 %67, label %75, label %68

68:                                               ; preds = %66
  %69 = icmp ult i32 %9, 1607001
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = icmp ult i32 %9, 1778001
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = icmp ult i32 %9, 1942001
  %74 = select i1 %73, i8 -96, i8 -64
  br label %75

75:                                               ; preds = %72, %70, %68, %66, %64, %62, %60
  %76 = phi i8 [ -62, %60 ], [ -30, %62 ], [ 32, %64 ], [ 64, %66 ], [ 96, %68 ], [ -128, %70 ], [ %74, %72 ]
  %77 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %76, ptr %77, align 1
  %78 = icmp ult i32 %12, 320032000
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = icmp ult i32 %12, 384032000
  br i1 %80, label %98, label %81

81:                                               ; preds = %79
  %82 = icmp ult i32 %12, 448032000
  br i1 %82, label %98, label %83

83:                                               ; preds = %81
  %84 = icmp ult i32 %12, 512032000
  br i1 %84, label %98, label %85

85:                                               ; preds = %83
  %86 = icmp ult i32 %12, 576032000
  br i1 %86, label %98, label %87

87:                                               ; preds = %85
  %88 = icmp ult i32 %12, 640032000
  br i1 %88, label %98, label %89

89:                                               ; preds = %87
  %90 = icmp ult i32 %12, 704032000
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = icmp ult i32 %12, 768032000
  br i1 %92, label %98, label %93

93:                                               ; preds = %91
  %94 = icmp ult i32 %12, 832032000
  br i1 %94, label %98, label %95

95:                                               ; preds = %93
  %96 = icmp ult i32 %12, 896032000
  %97 = select i1 %96, i32 3, i32 11
  br label %98

98:                                               ; preds = %95, %93, %91, %89, %87, %85, %83, %81, %79, %75
  %99 = phi i32 [ 12, %75 ], [ 2, %79 ], [ 10, %81 ], [ 6, %83 ], [ 14, %85 ], [ 1, %87 ], [ 9, %89 ], [ 5, %91 ], [ 13, %93 ], [ %97, %95 ]
  %100 = load i32, ptr @ix2505v_debug, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = zext i8 %76 to i32
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %104, i32 noundef %13, i32 noundef %99) #8
  %106 = load i32, ptr @ix2505v_debug, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %5) #8
  br label %111

111:                                              ; preds = %109, %103, %98
  %112 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call i32 %113(ptr noundef %0, i32 noundef 1) #10
  br label %117

117:                                              ; preds = %115, %111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %118 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %118, align 4, !annotation !8
  %119 = load ptr, ptr %24, align 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %4, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %123, align 4
  %124 = load ptr, ptr %8, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %4, i32 noundef 1) #10
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %133, label %127

127:                                              ; preds = %117
  %128 = load i32, ptr @ix2505v_debug, align 4
  %129 = and i32 %128, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ix2505v_write, i32 noundef %125) #8
  br label %133

133:                                              ; preds = %131, %127, %117
  %134 = phi i32 [ -5, %131 ], [ -5, %127 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %135 = load i8, ptr %54, align 2
  %136 = or i8 %135, 4
  store i8 %136, ptr %54, align 2
  %137 = load ptr, ptr %112, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %133
  %140 = call i32 %137(ptr noundef %0, i32 noundef 1) #10
  br label %141

141:                                              ; preds = %139, %133
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %142 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %142, align 4, !annotation !8
  %143 = load ptr, ptr %24, align 4
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %3, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %54, ptr %147, align 4
  %148 = load ptr, ptr %8, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %3, i32 noundef 1) #10
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %157, label %151

151:                                              ; preds = %141
  %152 = load i32, ptr @ix2505v_debug, align 4
  %153 = and i32 %152, 2
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ix2505v_write, i32 noundef %149) #8
  br label %157

157:                                              ; preds = %155, %151, %141
  %158 = phi i32 [ -5, %155 ], [ -5, %151 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %159 = or i32 %158, %134
  call void @msleep(i32 noundef 10) #10
  %160 = load i8, ptr %54, align 2
  %161 = trunc i32 %99 to i8
  %162 = shl nuw nsw i8 %161, 1
  %163 = and i8 %162, 24
  %164 = or i8 %160, %163
  store i8 %164, ptr %54, align 2
  %165 = load i8, ptr %77, align 1
  %166 = shl nuw nsw i8 %161, 2
  %167 = and i8 %166, 12
  %168 = or i8 %165, %167
  store i8 %168, ptr %77, align 1
  %169 = load i32, ptr @ix2505v_debug, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %157
  %173 = zext i8 %164 to i32
  %174 = zext i8 %168 to i32
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %173, i32 noundef %174) #8
  br label %176

176:                                              ; preds = %172, %157
  %177 = load ptr, ptr %112, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = call i32 %177(ptr noundef %0, i32 noundef 1) #10
  br label %181

181:                                              ; preds = %179, %176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %182 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %182, align 4, !annotation !8
  %183 = load ptr, ptr %24, align 4
  %184 = load i8, ptr %183, align 4
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %2, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %186, align 2
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %54, ptr %187, align 4
  %188 = load ptr, ptr %8, align 4
  %189 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %2, i32 noundef 1) #10
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %197, label %191

191:                                              ; preds = %181
  %192 = load i32, ptr @ix2505v_debug, align 4
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ix2505v_write, i32 noundef %189) #8
  br label %197

197:                                              ; preds = %195, %191, %181
  %198 = phi i32 [ -5, %195 ], [ -5, %191 ], [ 0, %181 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %199 = or i32 %159, %198
  %200 = load ptr, ptr %24, align 4
  %201 = getelementptr inbounds %struct.ix2505v_config, ptr %200, i32 0, i32 3
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %197
  call void @msleep(i32 noundef %202) #10
  br label %205

205:                                              ; preds = %204, %197
  %206 = getelementptr inbounds %struct.ix2505v_state, ptr %8, i32 0, i32 2
  store i32 %9, ptr %206, align 4
  br label %207

207:                                              ; preds = %205, %18, %1
  %208 = phi i32 [ %199, %205 ], [ -22, %18 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ix2505v_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ix2505v_state, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
