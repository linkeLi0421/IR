; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stb6100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb6100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb6100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb6100_attach:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stb6100_lkup = type { i32, i32, i8 }
%struct.stb6100_regmask = type { i8, i8 }
%struct.stb6100_state = type { ptr, ptr, %struct.dvb_tuner_ops, ptr, i32, i32, i32, i32 }
%struct.stb6100_config = type { i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@stb6100_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"STB6100 Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stb6100_release, ptr @stb6100_init, ptr @stb6100_sleep, ptr null, ptr null, ptr @stb6100_set_params, ptr null, ptr null, ptr @stb6100_get_frequency, ptr @stb6100_get_bandwidth, ptr null, ptr @stb6100_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Attaching STB6100 \0A\00", align 1
@__func__.stb6100_attach = private unnamed_addr constant [15 x i8] c"stb6100_attach\00", align 1
@__kstrtab_stb6100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb6100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb6100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb6100_attach to i32), ptr @__kstrtab_stb6100_attach, ptr @__kstrtabns_stb6100_attach }, section "___ksymtab+stb6100_attach", align 4
@__UNIQUE_ID_verbose250 = internal constant [33 x i8] c"parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [34 x i8] c"description=STB6100 Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013%s: Version 2010-8-14 13:51\0A\00", align 1
@__func__.stb6100_set_frequency = private unnamed_addr constant [22 x i8] c"stb6100_set_frequency\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\013%s: Get frontend parameters\0A\00", align 1
@lkup = internal unnamed_addr constant [14 x %struct.stb6100_lkup] [%struct.stb6100_lkup { i32 0, i32 950000, i8 10 }, %struct.stb6100_lkup { i32 950000, i32 1000000, i8 10 }, %struct.stb6100_lkup { i32 1000000, i32 1075000, i8 12 }, %struct.stb6100_lkup { i32 1075000, i32 1200000, i8 0 }, %struct.stb6100_lkup { i32 1200000, i32 1300000, i8 1 }, %struct.stb6100_lkup { i32 1300000, i32 1370000, i8 2 }, %struct.stb6100_lkup { i32 1370000, i32 1470000, i8 4 }, %struct.stb6100_lkup { i32 1470000, i32 1530000, i8 5 }, %struct.stb6100_lkup { i32 1530000, i32 1650000, i8 6 }, %struct.stb6100_lkup { i32 1650000, i32 1800000, i8 8 }, %struct.stb6100_lkup { i32 1800000, i32 1950000, i8 10 }, %struct.stb6100_lkup { i32 1950000, i32 2150000, i8 12 }, %struct.stb6100_lkup { i32 2150000, i32 9999999, i8 12 }, %struct.stb6100_lkup zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"\013%s: frequency out of range: %u kHz\0A\00", align 1
@.str.10 = private unnamed_addr constant [119 x i8] c"\013%s: frequency = %u, srate = %u, g = %u, odiv = %u, psd2 = %u, fxtal = %u, osm = %u, fvco = %u, N(I) = %u, N(F) = %u\0A\00", align 1
@stb6100_template = internal unnamed_addr constant [12 x %struct.stb6100_regmask] [%struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -57, i8 56 }, %struct.stb6100_regmask { i8 -17, i8 16 }, %struct.stb6100_regmask { i8 31, i8 -64 }, %struct.stb6100_regmask { i8 56, i8 -60 }, %struct.stb6100_regmask { i8 0, i8 -113 }, %struct.stb6100_regmask { i8 64, i8 13 }, %struct.stb6100_regmask { i8 -16, i8 11 }, %struct.stb6100_regmask { i8 0, i8 -34 }], align 1
@__func__.stb6100_write_reg_range = private unnamed_addr constant [24 x i8] c"stb6100_write_reg_range\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\013%s:     Write @ 0x%02x: [%d:%d]\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\013%s:         %s: 0x%02x\0A\00", align 1
@stb6100_regnames = internal unnamed_addr constant [12 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4
@.str.32 = private unnamed_addr constant [41 x i8] c"\013%s: (0x%x) write err [%d:%d], rc=[%d]\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"LD\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"VCO\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"NI\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"DLB\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"TEST1\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"FCCK\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"LPEN\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"TEST3\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"\013%s: set bandwidth to %u Hz\0A\00", align 1
@__func__.stb6100_set_bandwidth = private unnamed_addr constant [22 x i8] c"stb6100_set_bandwidth\00", align 1
@.str.52 = private unnamed_addr constant [101 x i8] c"\013%s: frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\0A\00", align 1
@__func__.stb6100_get_frequency = private unnamed_addr constant [22 x i8] c"stb6100_get_frequency\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"\013%s: Read (0x%x) err, rc=[%d]\0A\00", align 1
@__func__.stb6100_read_regs = private unnamed_addr constant [18 x i8] c"stb6100_read_regs\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"\013%s:     Read from 0x%02x\0A\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"\013%s: bandwidth = %u Hz\0A\00", align 1
@__func__.stb6100_get_bandwidth = private unnamed_addr constant [22 x i8] c"stb6100_get_bandwidth\00", align 1
@__func__.stb6100_read_reg = private unnamed_addr constant [17 x i8] c"stb6100_read_reg\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_stb6100_attach, ptr @__param_verbose], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stb6100_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 248) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stb6100_state, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  store ptr %2, ptr %5, align 8
  %9 = getelementptr inbounds %struct.stb6100_state, ptr %5, i32 0, i32 3
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stb6100_config, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %11, 1000
  %13 = getelementptr inbounds %struct.stb6100_state, ptr %5, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %15, ptr noundef nonnull align 4 dereferenceable(220) @stb6100_ops, i32 220, i1 false)
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.stb6100_attach) #10
  br label %17

17:                                               ; preds = %7, %3
  %18 = phi ptr [ %0, %7 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stb6100_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stb6100_init(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stb6100_state, ptr %3, i32 0, i32 6
  store i32 36000000, ptr %4, align 4
  %5 = getelementptr inbounds %struct.stb6100_state, ptr %3, i32 0, i32 7
  store i32 27000, ptr %5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stb6100_sleep(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6100_set_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %148, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @verbose, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.stb6100_set_frequency) #10
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @verbose, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.stb6100_set_frequency) #10
  %21 = load ptr, ptr %13, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %14, %16 ], [ %21, %19 ]
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef %2) #11
  br label %25

25:                                               ; preds = %22, %12
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 9, i8 noundef zeroext 77) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %148, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext -21) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %148, label %33

33:                                               ; preds = %30
  %34 = icmp ult i32 %3, 1075001
  %35 = zext i1 %34 to i32
  %36 = icmp ult i32 %3, 950000
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = icmp ult i32 %3, 1000000
  br i1 %38, label %63, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %3, 1075000
  br i1 %40, label %63, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %3, 1200000
  br i1 %42, label %63, label %43

43:                                               ; preds = %41
  %44 = icmp ult i32 %3, 1300000
  br i1 %44, label %63, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %3, 1370000
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %3, 1470000
  br i1 %48, label %63, label %49

49:                                               ; preds = %47
  %50 = icmp ult i32 %3, 1530000
  br i1 %50, label %63, label %51

51:                                               ; preds = %49
  %52 = icmp ult i32 %3, 1650000
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  %54 = icmp ult i32 %3, 1800000
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = icmp ult i32 %3, 1950000
  br i1 %56, label %63, label %57

57:                                               ; preds = %55
  %58 = icmp ult i32 %3, 2150000
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = icmp ult i32 %3, 9999999
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.stb6100_set_frequency, i32 noundef %3) #10
  br label %148

63:                                               ; preds = %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %33
  %64 = phi ptr [ @lkup, %33 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 1), %37 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 2), %39 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 3), %41 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 4), %43 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 5), %45 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 6), %47 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 7), %49 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 8), %51 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 9), %53 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 10), %55 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 11), %57 ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 12), %59 ]
  %65 = getelementptr inbounds %struct.stb6100_lkup, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 4
  %67 = select i1 %34, i8 16, i8 0
  %68 = or i8 %66, %67
  %69 = or i8 %68, -32
  %70 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %69) #11
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %148, label %72

72:                                               ; preds = %63
  %73 = add nsw i32 %3, -1325001
  %74 = icmp ult i32 %73, -250000
  %75 = zext i1 %74 to i32
  %76 = select i1 %34, i32 2, i32 1
  %77 = shl nuw nsw i32 %3, %76
  %78 = getelementptr inbounds %struct.stb6100_state, ptr %7, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, %75
  %81 = udiv i32 %77, %80
  %82 = mul i32 %81, %79
  %83 = shl i32 %82, %75
  %84 = sub i32 %77, %83
  %85 = select i1 %74, i32 8, i32 9
  %86 = shl i32 %84, %85
  %87 = lshr i32 %79, 1
  %88 = add i32 %86, %87
  %89 = udiv i32 %88, %79
  %90 = trunc i32 %81 to i8
  %91 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext %90) #11
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %148, label %93

93:                                               ; preds = %72
  %94 = trunc i32 %89 to i8
  %95 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %94) #11
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %148, label %97

97:                                               ; preds = %93
  %98 = select i1 %74, i32 4, i32 0
  %99 = lshr i32 %89, 8
  %100 = and i32 %99, 3
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  %103 = or i8 %102, 56
  %104 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext %103) #11
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %148, label %106

106:                                              ; preds = %97
  %107 = icmp ugt i32 %27, 14999999
  %108 = icmp ugt i32 %27, 4999999
  %109 = select i1 %108, i32 11, i32 14
  %110 = select i1 %107, i32 9, i32 %109
  %111 = trunc i32 %110 to i8
  %112 = or i8 %111, 48
  %113 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 5, i8 noundef zeroext %112) #11
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %148, label %115

115:                                              ; preds = %106
  %116 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 7, i8 noundef zeroext -52) #11
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %148, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr @verbose, align 4
  %120 = icmp ugt i32 %119, 3
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, ptr %78, align 4
  %123 = load i8, ptr %65, align 4
  %124 = zext i8 %123 to i32
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.stb6100_set_frequency, i32 noundef %3, i32 noundef %27, i32 noundef %110, i32 noundef %35, i32 noundef %75, i32 noundef %122, i32 noundef %124, i32 noundef %77, i32 noundef %81, i32 noundef %89) #10
  br label %126

126:                                              ; preds = %121, %118
  %127 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 8, i8 noundef zeroext -113) #11
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %126
  %130 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 11, i8 noundef zeroext -34) #11
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %129
  %133 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext -5) #11
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %132
  tail call void @msleep(i32 noundef 2) #11
  %136 = and i8 %69, -97
  %137 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %136) #11
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  tail call void @msleep(i32 noundef 10) #11
  %140 = and i8 %68, 31
  %141 = or i8 %140, 96
  %142 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %141) #11
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %7, i8 noundef zeroext 9, i8 noundef zeroext 13) #11
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call void @msleep(i32 noundef 10) #11
  br label %148

148:                                              ; preds = %147, %144, %139, %135, %132, %129, %126, %115, %106, %97, %93, %72, %63, %61, %30, %25, %1
  %149 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr @verbose, align 4
  %156 = icmp ugt i32 %155, 3
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.stb6100_set_bandwidth, i32 noundef %150) #10
  br label %159

159:                                              ; preds = %157, %152
  %160 = lshr i32 %150, 1
  %161 = icmp ugt i32 %150, 71999999
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  %163 = icmp ult i32 %150, 10000002
  br i1 %163, label %170, label %164

164:                                              ; preds = %162
  %165 = add nuw i32 %160, 500000
  %166 = udiv i32 %165, 1000000
  %167 = trunc i32 %166 to i8
  %168 = add i8 %167, 59
  %169 = or i8 %168, -64
  br label %170

170:                                              ; preds = %164, %162, %159
  %171 = phi i8 [ %169, %164 ], [ -33, %159 ], [ -64, %162 ]
  %172 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %154, i8 noundef zeroext 9, i8 noundef zeroext 77) #11
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %154, i8 noundef zeroext 6, i8 noundef zeroext %171) #11
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  tail call void @msleep(i32 noundef 5) #11
  %178 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %154, i8 noundef zeroext 9, i8 noundef zeroext 13) #11
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  tail call void @msleep(i32 noundef 10) #11
  br label %181

181:                                              ; preds = %180, %177, %174, %170, %148
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 12, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #11
  %16 = icmp eq i32 %15, 1
  %17 = load i32, ptr @verbose, align 4
  br i1 %16, label %25, label %18, !prof !9

18:                                               ; preds = %2
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %115, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %8, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.stb6100_read_regs, i32 noundef %23, i32 noundef %15) #10
  br label %115

25:                                               ; preds = %2
  %26 = icmp ugt i32 %17, 3
  br i1 %26, label %27, label %116, !prof !10

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stb6100_read_regs, i32 noundef %30) #10
  %32 = load i32, ptr @verbose, align 4
  %33 = icmp ugt i32 %32, 3
  br i1 %33, label %34, label %116

34:                                               ; preds = %27
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.36, i32 noundef %36) #10
  %38 = load i32, ptr @verbose, align 4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %40, label %116

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %4, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.37, i32 noundef %43) #10
  %45 = load i32, ptr @verbose, align 4
  %46 = icmp ugt i32 %45, 3
  br i1 %46, label %47, label %116

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, ptr %4, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.38, i32 noundef %50) #10
  %52 = load i32, ptr @verbose, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %116

54:                                               ; preds = %47
  %55 = getelementptr inbounds i8, ptr %4, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.39, i32 noundef %57) #10
  %59 = load i32, ptr @verbose, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %116

61:                                               ; preds = %54
  %62 = getelementptr inbounds i8, ptr %4, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.40, i32 noundef %64) #10
  %66 = load i32, ptr @verbose, align 4
  %67 = icmp ugt i32 %66, 3
  br i1 %67, label %68, label %116

68:                                               ; preds = %61
  %69 = getelementptr inbounds i8, ptr %4, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.41, i32 noundef %71) #10
  %73 = load i32, ptr @verbose, align 4
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %116

75:                                               ; preds = %68
  %76 = getelementptr inbounds i8, ptr %4, i32 6
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.42, i32 noundef %78) #10
  %80 = load i32, ptr @verbose, align 4
  %81 = icmp ugt i32 %80, 3
  br i1 %81, label %82, label %116

82:                                               ; preds = %75
  %83 = getelementptr inbounds i8, ptr %4, i32 7
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.43, i32 noundef %85) #10
  %87 = load i32, ptr @verbose, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %116

89:                                               ; preds = %82
  %90 = getelementptr inbounds i8, ptr %4, i32 8
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.44, i32 noundef %92) #10
  %94 = load i32, ptr @verbose, align 4
  %95 = icmp ugt i32 %94, 3
  br i1 %95, label %96, label %116

96:                                               ; preds = %89
  %97 = getelementptr inbounds i8, ptr %4, i32 9
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.45, i32 noundef %99) #10
  %101 = load i32, ptr @verbose, align 4
  %102 = icmp ugt i32 %101, 3
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = getelementptr inbounds i8, ptr %4, i32 10
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.46, i32 noundef %106) #10
  %108 = load i32, ptr @verbose, align 4
  %109 = icmp ugt i32 %108, 3
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = getelementptr inbounds i8, ptr %4, i32 11
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_regs, ptr noundef nonnull @.str.47, i32 noundef %113) #10
  br label %116

115:                                              ; preds = %20, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  br label %153

116:                                              ; preds = %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %34, %27, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  %117 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = lshr i8 %118, 4
  %120 = and i8 %119, 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = lshr i32 %124, 2
  %126 = and i32 %125, 1
  %127 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %124, 8
  %131 = and i32 %130, 768
  %132 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 3
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %131, %134
  %136 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 7
  %137 = load i32, ptr %136, align 4
  %138 = mul i32 %135, %137
  %139 = sub nuw nsw i32 9, %126
  %140 = lshr i32 %138, %139
  %141 = mul i32 %137, %129
  %142 = shl i32 %141, %126
  %143 = add i32 %140, %142
  %144 = add nuw nsw i32 %121, 1
  %145 = lshr i32 %143, %144
  %146 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 4
  store i32 %145, ptr %146, align 4
  store i32 %145, ptr %1, align 4
  %147 = load i32, ptr @verbose, align 4
  %148 = icmp ugt i32 %147, 3
  br i1 %148, label %149, label %153

149:                                              ; preds = %116
  %150 = load i32, ptr %146, align 4
  %151 = load i32, ptr %136, align 4
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.stb6100_get_frequency, i32 noundef %150, i32 noundef %121, i32 noundef %126, i32 noundef %151, i32 noundef %143, i32 noundef %129, i32 noundef %135) #10
  br label %153

153:                                              ; preds = %149, %116, %115
  %154 = phi i32 [ -121, %115 ], [ 0, %116 ], [ 0, %149 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [12 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i32 12, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  %12 = add nuw nsw i16 %11, 6
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #11
  %17 = load i32, ptr @verbose, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %30, !prof !10

19:                                               ; preds = %2
  %20 = load ptr, ptr %8, align 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stb6100_read_reg, i32 noundef %22) #10
  %24 = load i32, ptr @verbose, align 4
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8, ptr %3, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_reg, ptr noundef nonnull @.str.42, i32 noundef %28) #10
  br label %30

30:                                               ; preds = %26, %19, %2
  %31 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  %32 = and i8 %31, 31
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %33, 2000000
  %35 = add nuw nsw i32 %34, 10000000
  %36 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  store i32 %35, ptr %1, align 4
  %37 = load i32, ptr @verbose, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, ptr %36, align 4
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.stb6100_get_bandwidth, i32 noundef %40) #10
  br label %42

42:                                               ; preds = %39, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stb6100_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [12 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i32 12, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stb6100_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %4, i32 noundef 1) #11
  %16 = load i32, ptr @verbose, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %29, !prof !10

18:                                               ; preds = %2
  %19 = load ptr, ptr %8, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.stb6100_read_reg, i32 noundef %21) #10
  %23 = load i32, ptr @verbose, align 4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_read_reg, ptr noundef nonnull @.str.36, i32 noundef %27) #10
  br label %29

29:                                               ; preds = %25, %18, %2
  %30 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  %31 = and i8 %30, 1
  %32 = zext i8 %31 to i32
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stb6100_write_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = zext i8 %1 to i32
  %7 = getelementptr [12 x %struct.stb6100_regmask], ptr @stb6100_template, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, %2
  %10 = getelementptr [12 x %struct.stb6100_regmask], ptr @stb6100_template, i32 0, i32 %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %9, %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %13 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %13, i8 0, i32 62, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.stb6100_state, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  store i8 %12, ptr %21, align 1
  store i8 %1, ptr %4, align 1
  %22 = load i32, ptr @verbose, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %35, !prof !10

24:                                               ; preds = %3
  %25 = load i8, ptr %16, align 4
  %26 = zext i8 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.stb6100_write_reg_range, i32 noundef %26, i32 noundef %6, i32 noundef 1) #10
  %28 = load i32, ptr @verbose, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr [12 x ptr], ptr @stb6100_regnames, i32 0, i32 %6
  %32 = load ptr, ptr %31, align 4
  %33 = zext i8 %12 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.stb6100_write_reg_range, ptr noundef %32, i32 noundef %33) #10
  br label %35

35:                                               ; preds = %30, %24, %3
  %36 = load ptr, ptr %0, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %5, i32 noundef 1) #11
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %47, label %39, !prof !9

39:                                               ; preds = %35
  %40 = load i32, ptr @verbose, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %15, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.stb6100_write_reg_range, i32 noundef %45, i32 noundef %6, i32 noundef 1, i32 noundef %37) #10
  br label %47

47:                                               ; preds = %42, %39, %35
  %48 = phi i32 [ -121, %39 ], [ -121, %42 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
