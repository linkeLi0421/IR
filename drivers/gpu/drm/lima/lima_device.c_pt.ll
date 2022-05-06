; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lima_ip_desc = type { ptr, ptr, [2 x i8], [2 x i32], ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }

@lima_ip_desc = internal unnamed_addr constant [26 x %struct.lima_ip_desc] [%struct.lima_ip_desc { ptr @.str.9, ptr @.str.9, [2 x i8] zeroinitializer, [2 x i32] [i32 8192, i32 8192], ptr @lima_pmu_init, ptr @lima_pmu_fini, ptr @lima_pmu_resume, ptr @lima_pmu_suspend }, %struct.lima_ip_desc { ptr @.str.10, ptr @.str.10, [2 x i8] c"\01\01", [2 x i32] [i32 12288, i32 12288], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.11, ptr @.str.11, [2 x i8] c"\01\01", [2 x i32] [i32 16384, i32 16384], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.12, ptr @.str.12, [2 x i8] zeroinitializer, [2 x i32] [i32 20480, i32 20480], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.13, ptr @.str.13, [2 x i8] zeroinitializer, [2 x i32] [i32 24576, i32 24576], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.14, ptr @.str.14, [2 x i8] zeroinitializer, [2 x i32] [i32 28672, i32 28672], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.15, ptr @.str.15, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 114688], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.16, ptr @.str.16, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 118784], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.17, ptr @.str.17, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 122880], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.18, ptr @.str.18, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 126976], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }, %struct.lima_ip_desc { ptr @.str.19, ptr @.str.19, [2 x i8] c"\01\01", [2 x i32] zeroinitializer, ptr @lima_gp_init, ptr @lima_gp_fini, ptr @lima_gp_resume, ptr @lima_gp_suspend }, %struct.lima_ip_desc { ptr @.str.20, ptr @.str.20, [2 x i8] c"\01\01", [2 x i32] [i32 32768, i32 32768], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.21, ptr @.str.21, [2 x i8] zeroinitializer, [2 x i32] [i32 40960, i32 40960], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.22, ptr @.str.22, [2 x i8] zeroinitializer, [2 x i32] [i32 49152, i32 49152], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.23, ptr @.str.23, [2 x i8] zeroinitializer, [2 x i32] [i32 57344, i32 57344], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.24, ptr @.str.24, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 163840], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.25, ptr @.str.25, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 172032], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.26, ptr @.str.26, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 180224], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.27, ptr @.str.27, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 188416], ptr @lima_pp_init, ptr @lima_pp_fini, ptr @lima_pp_resume, ptr @lima_pp_suspend }, %struct.lima_ip_desc { ptr @.str.28, ptr null, [2 x i8] c"\01\01", [2 x i32] [i32 4096, i32 65536], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.29, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 4096], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.30, ptr null, [2 x i8] zeroinitializer, [2 x i32] [i32 -1, i32 69632], ptr @lima_l2_cache_init, ptr @lima_l2_cache_fini, ptr @lima_l2_cache_resume, ptr @lima_l2_cache_suspend }, %struct.lima_ip_desc { ptr @.str.31, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 81920], ptr @lima_dlbu_init, ptr @lima_dlbu_fini, ptr @lima_dlbu_resume, ptr @lima_dlbu_suspend }, %struct.lima_ip_desc { ptr @.str.32, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 77824], ptr @lima_bcast_init, ptr @lima_bcast_fini, ptr @lima_bcast_resume, ptr @lima_bcast_suspend }, %struct.lima_ip_desc { ptr @.str.33, ptr @.str.34, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 90112], ptr @lima_pp_bcast_init, ptr @lima_pp_bcast_fini, ptr @lima_pp_bcast_resume, ptr @lima_pp_bcast_suspend }, %struct.lima_ip_desc { ptr @.str.35, ptr null, [2 x i8] c"\00\01", [2 x i32] [i32 -1, i32 86016], ptr @lima_mmu_init, ptr @lima_mmu_fini, ptr @lima_mmu_resume, ptr @lima_mmu_suspend }], align 4
@.str = private unnamed_addr constant [23 x i8] c"fail to ioremap iomem\0A\00", align 1
@lima_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"&ldev->error_task_list_lock\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bus rate = %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"mod rate = %lu\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"resume clk fail %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"resume regulator fail %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"resume ip %d fail\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"devfreq resume fail\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"devfreq suspend fail\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"gpmmu\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ppmmu0\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ppmmu1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ppmmu2\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ppmmu3\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ppmmu4\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ppmmu5\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ppmmu6\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ppmmu7\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"gp\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"pp0\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pp1\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pp2\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pp3\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"pp4\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"pp5\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"pp6\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pp7\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"l2_cache0\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"l2_cache1\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"l2_cache2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"dlbu\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"pp_bcast\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ppmmu_bcast\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"get bus clk failed %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"get core clk failed %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"get reset controller failed %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"failed to get regulator: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"reset controller deassert failed %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @lima_ip_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [26 x %struct.lima_ip_desc], ptr @lima_ip_desc, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_device_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  store i32 -1, ptr %7, align 4
  %10 = load ptr, ptr %0, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %5, %1 ], [ %10, %9 ]
  %13 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.36) #4
  %14 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 7
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i32
  %18 = icmp eq ptr %13, inttoptr (i32 -517 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.37, i32 noundef %17) #5
  br label %21

21:                                               ; preds = %19, %16
  store ptr null, ptr %14, align 4
  br label %46

22:                                               ; preds = %11
  %23 = load ptr, ptr %0, align 8
  %24 = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.38) #4
  %25 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i32
  %29 = icmp eq ptr %24, inttoptr (i32 -517 to ptr)
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.39, i32 noundef %28) #5
  br label %32

32:                                               ; preds = %30, %27
  store ptr null, ptr %25, align 8
  br label %46

33:                                               ; preds = %22
  %34 = load ptr, ptr %0, align 8
  %35 = tail call ptr @devm_reset_control_array_get(ptr noundef %34, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %36 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 9
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i32
  %40 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.40, i32 noundef %39) #5
  br label %43

43:                                               ; preds = %41, %38
  store ptr null, ptr %36, align 4
  br label %46

44:                                               ; preds = %33
  %45 = tail call fastcc i32 @lima_clk_enable(ptr noundef %0) #4
  br label %46

46:                                               ; preds = %44, %43, %32, %21
  %47 = phi i32 [ %17, %21 ], [ %28, %32 ], [ %39, %43 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %233

49:                                               ; preds = %46
  %50 = load ptr, ptr %0, align 8
  %51 = tail call ptr @devm_regulator_get_optional(ptr noundef %50, ptr noundef nonnull @.str.41) #4
  %52 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 10
  store ptr %51, ptr %52, align 8
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = ptrtoint ptr %51 to i32
  store ptr null, ptr %52, align 8
  switch i32 %55, label %63 [
    i32 -19, label %65
    i32 -517, label %222
  ]

56:                                               ; preds = %49
  %57 = icmp eq ptr %51, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %56
  %59 = tail call i32 @regulator_enable(ptr noundef nonnull %51) #4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.44, i32 noundef %59) #5
  br label %222

63:                                               ; preds = %54
  %64 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.42, i32 noundef %55) #5
  br label %222

65:                                               ; preds = %58, %56, %54
  %66 = tail call ptr @lima_vm_create(ptr noundef %0) #4
  %67 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 13
  store ptr %66, ptr %67, align 8
  %68 = icmp eq ptr %66, null
  br i1 %68, label %216, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 14
  store i64 0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 1
  %74 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 15
  br i1 %73, label %75, label %81

75:                                               ; preds = %69
  store i64 4293918720, ptr %74, align 8
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 17
  %78 = tail call ptr @dma_alloc_attrs(ptr noundef %76, i32 noundef 4096, ptr noundef %77, i32 noundef 11456, i32 noundef 260) #4
  %79 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 16
  store ptr %78, ptr %79, align 8
  %80 = icmp eq ptr %78, null
  br i1 %80, label %203, label %82

81:                                               ; preds = %69
  store i64 4294967296, ptr %74, align 8
  br label %82

82:                                               ; preds = %81, %75
  %83 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %3, i32 noundef 0) #4
  %84 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 6
  store ptr %83, ptr %84, align 8
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 11
  br label %92

88:                                               ; preds = %82
  %89 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str) #5
  %90 = load ptr, ptr %84, align 8
  %91 = ptrtoint ptr %90 to i32
  br label %194

92:                                               ; preds = %131, %86
  %93 = phi i32 [ 0, %86 ], [ %132, %131 ]
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr i8, ptr %94, i32 -16
  %96 = getelementptr %struct.lima_ip, ptr %87, i32 %93
  %97 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %93, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %71, align 8
  %100 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %93, i32 3, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %93, i32 2, i32 %99
  %103 = load i8, ptr %102, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = icmp slt i32 %101, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %92
  store ptr %0, ptr %96, align 4
  %107 = getelementptr %struct.lima_ip, ptr %87, i32 %93, i32 1
  store i32 %93, ptr %107, align 4
  %108 = load ptr, ptr %84, align 8
  %109 = getelementptr i8, ptr %108, i32 %101
  %110 = getelementptr %struct.lima_ip, ptr %87, i32 %93, i32 3
  store ptr %109, ptr %110, align 4
  %111 = icmp eq ptr %98, null
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  br i1 %104, label %115, label %113

113:                                              ; preds = %112
  %114 = tail call i32 @platform_get_irq_byname(ptr noundef %95, ptr noundef nonnull %98) #4
  br label %117

115:                                              ; preds = %112
  %116 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %95, ptr noundef nonnull %98) #4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = getelementptr %struct.lima_ip, ptr %87, i32 %93, i32 4
  store i32 %118, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %106
  %123 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %93, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 %124(ptr noundef %96) #4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = getelementptr %struct.lima_ip, ptr %87, i32 %93, i32 2
  store i8 1, ptr %128, align 4
  br label %131

129:                                              ; preds = %122, %117
  %130 = phi i32 [ %118, %117 ], [ %125, %122 ]
  br i1 %104, label %131, label %175

131:                                              ; preds = %129, %127, %92
  %132 = add nuw nsw i32 %93, 1
  %133 = icmp eq i32 %132, 26
  br i1 %133, label %134, label %92

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12
  %136 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 4
  store ptr %0, ptr %136, align 8
  %137 = tail call i32 @lima_sched_pipe_init(ptr noundef %135, ptr noundef nonnull @.str.19) #4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %179

139:                                              ; preds = %134
  %140 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 19
  %141 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 10
  %142 = load i32, ptr %141, align 8
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 8
  %144 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 9, i32 %142
  store ptr %140, ptr %144, align 4
  %145 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 1
  %146 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 4
  %149 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 7, i32 %147
  store ptr %145, ptr %149, align 4
  %150 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 10
  %151 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 12
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4
  %154 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 11, i32 %152
  store ptr %150, ptr %154, align 4
  %155 = tail call i32 @lima_gp_pipe_init(ptr noundef %0) #4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %139
  %158 = tail call fastcc i32 @lima_init_pp_pipe(ptr noundef %0)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 19
  store i32 1095584076, ptr %161, align 8
  %162 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 19, i32 1
  store i16 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 19, i32 2
  store i16 0, ptr %163, align 2
  %164 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 20
  store volatile ptr %164, ptr %164, align 4
  %165 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 20, i32 1
  store ptr %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %166, ptr noundef nonnull @.str.1, ptr noundef nonnull @lima_device_init.__key) #4
  %167 = load ptr, ptr %0, align 8
  %168 = load ptr, ptr %14, align 4
  %169 = tail call i32 @clk_get_rate(ptr noundef %168) #4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.2, i32 noundef %169) #5
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  %172 = load ptr, ptr %171, align 8
  %173 = tail call i32 @clk_get_rate(ptr noundef %172) #4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.3, i32 noundef %173) #5
  br label %233

174:                                              ; preds = %157
  tail call void @lima_gp_pipe_fini(ptr noundef %0) #4
  br label %177

175:                                              ; preds = %129
  %176 = icmp eq i32 %93, 0
  br i1 %176, label %194, label %179

177:                                              ; preds = %174, %139
  %178 = phi i32 [ %158, %174 ], [ %155, %139 ]
  tail call void @lima_sched_pipe_fini(ptr noundef %135) #4
  br label %179

179:                                              ; preds = %177, %175, %134
  %180 = phi i32 [ %130, %175 ], [ %137, %134 ], [ %178, %177 ]
  %181 = phi i32 [ %93, %175 ], [ 26, %134 ], [ 26, %177 ]
  br label %182

182:                                              ; preds = %192, %179
  %183 = phi i32 [ %181, %179 ], [ %184, %192 ]
  %184 = add nsw i32 %183, -1
  %185 = getelementptr %struct.lima_ip, ptr %87, i32 %184, i32 2
  %186 = load i8, ptr %185, align 4, !range !8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = getelementptr %struct.lima_ip, ptr %87, i32 %184
  %190 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %184, i32 5
  %191 = load ptr, ptr %190, align 4
  tail call void %191(ptr noundef %189) #4
  br label %192

192:                                              ; preds = %188, %182
  %193 = icmp sgt i32 %183, 1
  br i1 %193, label %182, label %194

194:                                              ; preds = %192, %175, %88
  %195 = phi i32 [ %91, %88 ], [ %130, %175 ], [ %180, %192 ]
  %196 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 16
  %197 = load ptr, ptr %196, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr %0, align 8
  %201 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 17
  %202 = load i32, ptr %201, align 4
  tail call void @dma_free_attrs(ptr noundef %200, i32 noundef 4096, ptr noundef nonnull %197, i32 noundef %202, i32 noundef 4) #4
  br label %203

203:                                              ; preds = %199, %194, %75
  %204 = phi i32 [ %195, %199 ], [ %195, %194 ], [ -12, %75 ]
  %205 = load ptr, ptr %67, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.lima_vm, ptr %205, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #4, !srcloc !10
  %209 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 1, ptr elementtype(i32) %208) #4, !srcloc !11
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = icmp sgt i32 %210, 0
  br i1 %213, label %216, label %214, !prof !12

214:                                              ; preds = %212
  tail call void @refcount_warn_saturate(ptr noundef %208, i32 noundef 3) #4
  br label %216

215:                                              ; preds = %207
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void @lima_vm_release(ptr noundef %208) #4
  br label %216

216:                                              ; preds = %215, %214, %212, %203, %65
  %217 = phi i32 [ -12, %65 ], [ %204, %203 ], [ %204, %212 ], [ %204, %214 ], [ %204, %215 ]
  %218 = load ptr, ptr %52, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = tail call i32 @regulator_disable(ptr noundef nonnull %218) #4
  br label %222

222:                                              ; preds = %220, %216, %63, %61, %54
  %223 = phi i32 [ %55, %63 ], [ %59, %61 ], [ %217, %216 ], [ %217, %220 ], [ %55, %54 ]
  %224 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 9
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = tail call i32 @reset_control_assert(ptr noundef nonnull %225) #4
  br label %229

229:                                              ; preds = %227, %222
  %230 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  %231 = load ptr, ptr %230, align 8
  tail call void @clk_disable(ptr noundef %231) #4
  tail call void @clk_unprepare(ptr noundef %231) #4
  %232 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %232) #4
  tail call void @clk_unprepare(ptr noundef %232) #4
  br label %233

233:                                              ; preds = %229, %160, %46
  %234 = phi i32 [ %223, %229 ], [ 0, %160 ], [ %47, %46 ]
  ret i32 %234
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_vm_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_init_pp_pipe(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1
  %3 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 4
  store ptr %0, ptr %3, align 8
  %4 = tail call i32 @lima_sched_pipe_init(ptr noundef %2, ptr noundef nonnull @.str.34) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %1
  %7 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 11
  %8 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 2
  %9 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 2
  %10 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 19
  %11 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 20
  %12 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 8
  %13 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 12
  %14 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 10
  br label %15

15:                                               ; preds = %49, %6
  %16 = phi i32 [ 0, %6 ], [ %50, %49 ]
  %17 = getelementptr %struct.lima_ip, ptr %7, i32 %16
  %18 = getelementptr %struct.lima_ip, ptr %8, i32 %16
  %19 = load i32, ptr %9, align 8
  %20 = icmp eq i32 %19, 0
  %21 = lshr i32 %16, 2
  %22 = getelementptr %struct.lima_ip, ptr %11, i32 %21
  %23 = select i1 %20, ptr %10, ptr %22
  %24 = getelementptr %struct.lima_ip, ptr %7, i32 %16, i32 2
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %15
  %28 = getelementptr %struct.lima_ip, ptr %8, i32 %16, i32 2
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.lima_ip, ptr %23, i32 0, i32 2
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %12, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %12, align 4
  %38 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 7, i32 %36
  store ptr %18, ptr %38, align 4
  %39 = load i32, ptr %13, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %13, align 4
  %41 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 11, i32 %39
  store ptr %17, ptr %41, align 4
  %42 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 9, i32 %21
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, ptr %14, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %14, align 8
  %48 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 9, i32 %46
  store ptr %23, ptr %48, align 4
  br label %49

49:                                               ; preds = %45, %35, %31, %27, %15
  %50 = add nuw nsw i32 %16, 1
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %15

52:                                               ; preds = %49
  %53 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 23, i32 2
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 24
  %58 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 13
  store ptr %57, ptr %58, align 8
  %59 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 25
  %60 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 14
  store ptr %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = tail call i32 @lima_pp_pipe_init(ptr noundef %0) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @lima_sched_pipe_fini(ptr noundef %2) #4
  br label %65

65:                                               ; preds = %64, %61, %1
  %66 = phi i32 [ %62, %64 ], [ %4, %1 ], [ 0, %61 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_device_fini(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kvfree(ptr noundef %6) #4
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1
  tail call void @lima_pp_pipe_fini(ptr noundef %0) #4
  tail call void @lima_sched_pipe_fini(ptr noundef %13) #4
  %14 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12
  tail call void @lima_gp_pipe_fini(ptr noundef %0) #4
  tail call void @lima_sched_pipe_fini(ptr noundef %14) #4
  %15 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 11
  br label %16

16:                                               ; preds = %25, %12
  %17 = phi i32 [ 25, %12 ], [ %26, %25 ]
  %18 = getelementptr %struct.lima_ip, ptr %15, i32 %17, i32 2
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.lima_ip, ptr %15, i32 %17
  %23 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %17, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %22) #4
  br label %25

25:                                               ; preds = %21, %16
  %26 = add nsw i32 %17, -1
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 17
  %35 = load i32, ptr %34, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef 4096, ptr noundef nonnull %30, i32 noundef %35, i32 noundef 4) #4
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 13
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.lima_vm, ptr %38, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #4, !srcloc !10
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #4, !srcloc !11
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !12

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #4
  br label %49

48:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void @lima_vm_release(ptr noundef %41) #4
  br label %49

49:                                               ; preds = %48, %47, %45, %36
  %50 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 10
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @regulator_disable(ptr noundef nonnull %51) #4
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @reset_control_assert(ptr noundef nonnull %57) #4
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  %63 = load ptr, ptr %62, align 8
  tail call void @clk_disable(ptr noundef %63) #4
  tail call void @clk_unprepare(ptr noundef %63) #4
  %64 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  tail call void @clk_disable(ptr noundef %65) #4
  tail call void @clk_unprepare(ptr noundef %65) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_device_resume(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @lima_clk_enable(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %4) #5
  br label %72

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 11
  br label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.44, i32 noundef %12) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %12) #5
  br label %60

18:                                               ; preds = %29, %14
  %19 = phi i32 [ 0, %14 ], [ %30, %29 ]
  %20 = getelementptr %struct.lima_ip, ptr %15, i32 %19, i32 2
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.lima_ip, ptr %15, i32 %19
  %25 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %19, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %24) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23, %18
  %30 = add nuw nsw i32 %19, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %32, label %18

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 18
  %34 = tail call i32 @lima_devfreq_resume(ptr noundef %33) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  br label %39

37:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %19) #5
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ %34, %36 ], [ %27, %37 ]
  %41 = phi i32 [ 26, %36 ], [ %19, %37 ]
  br label %42

42:                                               ; preds = %52, %39
  %43 = phi i32 [ %41, %39 ], [ %44, %52 ]
  %44 = add nsw i32 %43, -1
  %45 = getelementptr %struct.lima_ip, ptr %15, i32 %44, i32 2
  %46 = load i8, ptr %45, align 4, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr %struct.lima_ip, ptr %15, i32 %44
  %50 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %44, i32 7
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %49) #4
  br label %52

52:                                               ; preds = %48, %42
  %53 = icmp sgt i32 %43, 1
  br i1 %53, label %42, label %54

54:                                               ; preds = %52, %37
  %55 = phi i32 [ %27, %37 ], [ %40, %52 ]
  %56 = load ptr, ptr %8, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @regulator_disable(ptr noundef nonnull %56) #4
  br label %60

60:                                               ; preds = %58, %54, %16
  %61 = phi i32 [ %12, %16 ], [ %55, %54 ], [ %55, %58 ]
  %62 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 9
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @reset_control_assert(ptr noundef nonnull %63) #4
  br label %67

67:                                               ; preds = %65, %60
  %68 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 8
  %69 = load ptr, ptr %68, align 8
  tail call void @clk_disable(ptr noundef %69) #4
  tail call void @clk_unprepare(ptr noundef %69) #4
  %70 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  tail call void @clk_disable(ptr noundef %71) #4
  tail call void @clk_unprepare(ptr noundef %71) #4
  br label %72

72:                                               ; preds = %67, %32, %6
  %73 = phi i32 [ %4, %6 ], [ %61, %67 ], [ 0, %32 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_clk_enable(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @reset_control_deassert(ptr noundef nonnull %19) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.43, i32 noundef %22) #5
  %26 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %26) #4
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi ptr [ %26, %24 ], [ %11, %14 ]
  %29 = phi i32 [ %22, %24 ], [ %15, %14 ]
  tail call void @clk_unprepare(ptr noundef %28) #4
  br label %30

30:                                               ; preds = %27, %9
  %31 = phi i32 [ %12, %9 ], [ %29, %27 ]
  %32 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %32) #4
  br label %33

33:                                               ; preds = %30, %6
  %34 = phi ptr [ %32, %30 ], [ %3, %6 ]
  %35 = phi i32 [ %31, %30 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %34) #4
  br label %36

36:                                               ; preds = %33, %21, %17, %1
  %37 = phi i32 [ 0, %21 ], [ 0, %17 ], [ %4, %1 ], [ %35, %33 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_device_suspend(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 0, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 18
  %13 = tail call i32 @lima_devfreq_suspend(ptr noundef %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 11
  br label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #5
  br label %47

18:                                               ; preds = %27, %15
  %19 = phi i32 [ 25, %15 ], [ %28, %27 ]
  %20 = getelementptr %struct.lima_ip, ptr %16, i32 %19, i32 2
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.lima_ip, ptr %16, i32 %19
  %25 = getelementptr %struct.lima_ip_desc, ptr @lima_ip_desc, i32 %19, i32 7
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %24) #4
  br label %27

27:                                               ; preds = %23, %18
  %28 = add nsw i32 %19, -1
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %30, label %18

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @regulator_disable(ptr noundef nonnull %32) #4
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @reset_control_assert(ptr noundef nonnull %38) #4
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  tail call void @clk_disable(ptr noundef %44) #4
  tail call void @clk_unprepare(ptr noundef %44) #4
  %45 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #4
  tail call void @clk_unprepare(ptr noundef %46) #4
  br label %47

47:                                               ; preds = %42, %17, %7, %1
  %48 = phi i32 [ %13, %17 ], [ 0, %42 ], [ -16, %7 ], [ -16, %1 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pmu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pmu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pmu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pmu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_mmu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_mmu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_mmu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_l2_cache_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_l2_cache_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_l2_cache_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_dlbu_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_dlbu_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_bcast_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_bcast_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_bcast_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_bcast_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_bcast_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_bcast_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_pipe_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gp_pipe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_pp_pipe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_gp_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_pp_pipe_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148330641}
!10 = !{i64 727575, i64 2148217546, i64 2148217572, i64 2148217619, i64 2148217641, i64 2148217669, i64 2148217689}
!11 = !{i64 2148232776, i64 2148232808, i64 2148232837, i64 2148232871, i64 2148232902, i64 2148232925}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149294363}
