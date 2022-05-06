; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_cursor.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_cursor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.sti_cursor = type { %struct.sti_plane, ptr, ptr, i32, i32, ptr, i32, %struct.dma_pixmap }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.dma_pixmap = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.73 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for cursor\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for cursor clut\0A\00", align 1
@sti_cursor_plane_helpers_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_cursor_late_register, ptr null, ptr null, ptr null }, align 4
@cursor_supported_formats = internal constant [1 x i32] [i32 875713089], align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to initialize universal plane\0A\00", align 1
@sti_cursor_helpers_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_cursor_atomic_check, ptr @sti_cursor_atomic_update, ptr @sti_cursor_atomic_disable, ptr null, ptr null }, align 4
@cursor_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.3, ptr @cursor_dbg_show, i32 0, ptr null }], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CUR_CTL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CUR_VPO\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CUR_PML\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"CUR_PMP\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"CUR_SIZE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CUR_CML\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CUR_AWS\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CUR_AWE\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\09xdo:%4d\09ydo:%4d\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\09Virt @: %p\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\09%d x %d\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Invalid cursor size (%dx%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for pixmap\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"(%dx%d)@(%d,%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"drm plane:%d not enabled\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sti_cursor_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 792, i32 noundef 3520) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %283

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sti_cursor, ptr %6, i32 0, i32 6
  %11 = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 512, ptr noundef %10, i32 noundef 3265, i32 noundef 4) #3
  %12 = getelementptr inbounds %struct.sti_cursor, ptr %6, i32 0, i32 5
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %282

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sti_cursor, ptr %6, i32 0, i32 1
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sti_cursor, ptr %6, i32 0, i32 2
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sti_plane, ptr %6, i32 0, i32 1
  store i32 %2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sti_plane, ptr %6, i32 0, i32 2
  store i32 4, ptr %19, align 4
  %20 = getelementptr i16, ptr %11, i32 1
  store i16 0, ptr %11, align 2
  %21 = getelementptr i16, ptr %11, i32 2
  store i16 5, ptr %20, align 2
  %22 = getelementptr i16, ptr %11, i32 3
  store i16 10, ptr %21, align 2
  %23 = getelementptr i16, ptr %11, i32 4
  store i16 15, ptr %22, align 2
  %24 = getelementptr i16, ptr %11, i32 5
  store i16 80, ptr %23, align 2
  %25 = getelementptr i16, ptr %11, i32 6
  store i16 85, ptr %24, align 2
  %26 = getelementptr i16, ptr %11, i32 7
  store i16 90, ptr %25, align 2
  %27 = getelementptr i16, ptr %11, i32 8
  store i16 95, ptr %26, align 2
  %28 = getelementptr i16, ptr %11, i32 9
  store i16 160, ptr %27, align 2
  %29 = getelementptr i16, ptr %11, i32 10
  store i16 165, ptr %28, align 2
  %30 = getelementptr i16, ptr %11, i32 11
  store i16 170, ptr %29, align 2
  %31 = getelementptr i16, ptr %11, i32 12
  store i16 175, ptr %30, align 2
  %32 = getelementptr i16, ptr %11, i32 13
  store i16 240, ptr %31, align 2
  %33 = getelementptr i16, ptr %11, i32 14
  store i16 245, ptr %32, align 2
  %34 = getelementptr i16, ptr %11, i32 15
  store i16 250, ptr %33, align 2
  %35 = getelementptr i16, ptr %11, i32 16
  store i16 255, ptr %34, align 2
  %36 = getelementptr i16, ptr %11, i32 17
  store i16 1280, ptr %35, align 2
  %37 = getelementptr i16, ptr %11, i32 18
  store i16 1285, ptr %36, align 2
  %38 = getelementptr i16, ptr %11, i32 19
  store i16 1290, ptr %37, align 2
  %39 = getelementptr i16, ptr %11, i32 20
  store i16 1295, ptr %38, align 2
  %40 = getelementptr i16, ptr %11, i32 21
  store i16 1360, ptr %39, align 2
  %41 = getelementptr i16, ptr %11, i32 22
  store i16 1365, ptr %40, align 2
  %42 = getelementptr i16, ptr %11, i32 23
  store i16 1370, ptr %41, align 2
  %43 = getelementptr i16, ptr %11, i32 24
  store i16 1375, ptr %42, align 2
  %44 = getelementptr i16, ptr %11, i32 25
  store i16 1440, ptr %43, align 2
  %45 = getelementptr i16, ptr %11, i32 26
  store i16 1445, ptr %44, align 2
  %46 = getelementptr i16, ptr %11, i32 27
  store i16 1450, ptr %45, align 2
  %47 = getelementptr i16, ptr %11, i32 28
  store i16 1455, ptr %46, align 2
  %48 = getelementptr i16, ptr %11, i32 29
  store i16 1520, ptr %47, align 2
  %49 = getelementptr i16, ptr %11, i32 30
  store i16 1525, ptr %48, align 2
  %50 = getelementptr i16, ptr %11, i32 31
  store i16 1530, ptr %49, align 2
  %51 = getelementptr i16, ptr %11, i32 32
  store i16 1535, ptr %50, align 2
  %52 = getelementptr i16, ptr %11, i32 33
  store i16 2560, ptr %51, align 2
  %53 = getelementptr i16, ptr %11, i32 34
  store i16 2565, ptr %52, align 2
  %54 = getelementptr i16, ptr %11, i32 35
  store i16 2570, ptr %53, align 2
  %55 = getelementptr i16, ptr %11, i32 36
  store i16 2575, ptr %54, align 2
  %56 = getelementptr i16, ptr %11, i32 37
  store i16 2640, ptr %55, align 2
  %57 = getelementptr i16, ptr %11, i32 38
  store i16 2645, ptr %56, align 2
  %58 = getelementptr i16, ptr %11, i32 39
  store i16 2650, ptr %57, align 2
  %59 = getelementptr i16, ptr %11, i32 40
  store i16 2655, ptr %58, align 2
  %60 = getelementptr i16, ptr %11, i32 41
  store i16 2720, ptr %59, align 2
  %61 = getelementptr i16, ptr %11, i32 42
  store i16 2725, ptr %60, align 2
  %62 = getelementptr i16, ptr %11, i32 43
  store i16 2730, ptr %61, align 2
  %63 = getelementptr i16, ptr %11, i32 44
  store i16 2735, ptr %62, align 2
  %64 = getelementptr i16, ptr %11, i32 45
  store i16 2800, ptr %63, align 2
  %65 = getelementptr i16, ptr %11, i32 46
  store i16 2805, ptr %64, align 2
  %66 = getelementptr i16, ptr %11, i32 47
  store i16 2810, ptr %65, align 2
  %67 = getelementptr i16, ptr %11, i32 48
  store i16 2815, ptr %66, align 2
  %68 = getelementptr i16, ptr %11, i32 49
  store i16 3840, ptr %67, align 2
  %69 = getelementptr i16, ptr %11, i32 50
  store i16 3845, ptr %68, align 2
  %70 = getelementptr i16, ptr %11, i32 51
  store i16 3850, ptr %69, align 2
  %71 = getelementptr i16, ptr %11, i32 52
  store i16 3855, ptr %70, align 2
  %72 = getelementptr i16, ptr %11, i32 53
  store i16 3920, ptr %71, align 2
  %73 = getelementptr i16, ptr %11, i32 54
  store i16 3925, ptr %72, align 2
  %74 = getelementptr i16, ptr %11, i32 55
  store i16 3930, ptr %73, align 2
  %75 = getelementptr i16, ptr %11, i32 56
  store i16 3935, ptr %74, align 2
  %76 = getelementptr i16, ptr %11, i32 57
  store i16 4000, ptr %75, align 2
  %77 = getelementptr i16, ptr %11, i32 58
  store i16 4005, ptr %76, align 2
  %78 = getelementptr i16, ptr %11, i32 59
  store i16 4010, ptr %77, align 2
  %79 = getelementptr i16, ptr %11, i32 60
  store i16 4015, ptr %78, align 2
  %80 = getelementptr i16, ptr %11, i32 61
  store i16 4080, ptr %79, align 2
  %81 = getelementptr i16, ptr %11, i32 62
  store i16 4085, ptr %80, align 2
  %82 = getelementptr i16, ptr %11, i32 63
  store i16 4090, ptr %81, align 2
  %83 = getelementptr i16, ptr %11, i32 64
  store i16 4095, ptr %82, align 2
  %84 = getelementptr i16, ptr %11, i32 65
  store i16 20480, ptr %83, align 2
  %85 = getelementptr i16, ptr %11, i32 66
  store i16 20485, ptr %84, align 2
  %86 = getelementptr i16, ptr %11, i32 67
  store i16 20490, ptr %85, align 2
  %87 = getelementptr i16, ptr %11, i32 68
  store i16 20495, ptr %86, align 2
  %88 = getelementptr i16, ptr %11, i32 69
  store i16 20560, ptr %87, align 2
  %89 = getelementptr i16, ptr %11, i32 70
  store i16 20565, ptr %88, align 2
  %90 = getelementptr i16, ptr %11, i32 71
  store i16 20570, ptr %89, align 2
  %91 = getelementptr i16, ptr %11, i32 72
  store i16 20575, ptr %90, align 2
  %92 = getelementptr i16, ptr %11, i32 73
  store i16 20640, ptr %91, align 2
  %93 = getelementptr i16, ptr %11, i32 74
  store i16 20645, ptr %92, align 2
  %94 = getelementptr i16, ptr %11, i32 75
  store i16 20650, ptr %93, align 2
  %95 = getelementptr i16, ptr %11, i32 76
  store i16 20655, ptr %94, align 2
  %96 = getelementptr i16, ptr %11, i32 77
  store i16 20720, ptr %95, align 2
  %97 = getelementptr i16, ptr %11, i32 78
  store i16 20725, ptr %96, align 2
  %98 = getelementptr i16, ptr %11, i32 79
  store i16 20730, ptr %97, align 2
  %99 = getelementptr i16, ptr %11, i32 80
  store i16 20735, ptr %98, align 2
  %100 = getelementptr i16, ptr %11, i32 81
  store i16 21760, ptr %99, align 2
  %101 = getelementptr i16, ptr %11, i32 82
  store i16 21765, ptr %100, align 2
  %102 = getelementptr i16, ptr %11, i32 83
  store i16 21770, ptr %101, align 2
  %103 = getelementptr i16, ptr %11, i32 84
  store i16 21775, ptr %102, align 2
  %104 = getelementptr i16, ptr %11, i32 85
  store i16 21840, ptr %103, align 2
  %105 = getelementptr i16, ptr %11, i32 86
  store i16 21845, ptr %104, align 2
  %106 = getelementptr i16, ptr %11, i32 87
  store i16 21850, ptr %105, align 2
  %107 = getelementptr i16, ptr %11, i32 88
  store i16 21855, ptr %106, align 2
  %108 = getelementptr i16, ptr %11, i32 89
  store i16 21920, ptr %107, align 2
  %109 = getelementptr i16, ptr %11, i32 90
  store i16 21925, ptr %108, align 2
  %110 = getelementptr i16, ptr %11, i32 91
  store i16 21930, ptr %109, align 2
  %111 = getelementptr i16, ptr %11, i32 92
  store i16 21935, ptr %110, align 2
  %112 = getelementptr i16, ptr %11, i32 93
  store i16 22000, ptr %111, align 2
  %113 = getelementptr i16, ptr %11, i32 94
  store i16 22005, ptr %112, align 2
  %114 = getelementptr i16, ptr %11, i32 95
  store i16 22010, ptr %113, align 2
  %115 = getelementptr i16, ptr %11, i32 96
  store i16 22015, ptr %114, align 2
  %116 = getelementptr i16, ptr %11, i32 97
  store i16 23040, ptr %115, align 2
  %117 = getelementptr i16, ptr %11, i32 98
  store i16 23045, ptr %116, align 2
  %118 = getelementptr i16, ptr %11, i32 99
  store i16 23050, ptr %117, align 2
  %119 = getelementptr i16, ptr %11, i32 100
  store i16 23055, ptr %118, align 2
  %120 = getelementptr i16, ptr %11, i32 101
  store i16 23120, ptr %119, align 2
  %121 = getelementptr i16, ptr %11, i32 102
  store i16 23125, ptr %120, align 2
  %122 = getelementptr i16, ptr %11, i32 103
  store i16 23130, ptr %121, align 2
  %123 = getelementptr i16, ptr %11, i32 104
  store i16 23135, ptr %122, align 2
  %124 = getelementptr i16, ptr %11, i32 105
  store i16 23200, ptr %123, align 2
  %125 = getelementptr i16, ptr %11, i32 106
  store i16 23205, ptr %124, align 2
  %126 = getelementptr i16, ptr %11, i32 107
  store i16 23210, ptr %125, align 2
  %127 = getelementptr i16, ptr %11, i32 108
  store i16 23215, ptr %126, align 2
  %128 = getelementptr i16, ptr %11, i32 109
  store i16 23280, ptr %127, align 2
  %129 = getelementptr i16, ptr %11, i32 110
  store i16 23285, ptr %128, align 2
  %130 = getelementptr i16, ptr %11, i32 111
  store i16 23290, ptr %129, align 2
  %131 = getelementptr i16, ptr %11, i32 112
  store i16 23295, ptr %130, align 2
  %132 = getelementptr i16, ptr %11, i32 113
  store i16 24320, ptr %131, align 2
  %133 = getelementptr i16, ptr %11, i32 114
  store i16 24325, ptr %132, align 2
  %134 = getelementptr i16, ptr %11, i32 115
  store i16 24330, ptr %133, align 2
  %135 = getelementptr i16, ptr %11, i32 116
  store i16 24335, ptr %134, align 2
  %136 = getelementptr i16, ptr %11, i32 117
  store i16 24400, ptr %135, align 2
  %137 = getelementptr i16, ptr %11, i32 118
  store i16 24405, ptr %136, align 2
  %138 = getelementptr i16, ptr %11, i32 119
  store i16 24410, ptr %137, align 2
  %139 = getelementptr i16, ptr %11, i32 120
  store i16 24415, ptr %138, align 2
  %140 = getelementptr i16, ptr %11, i32 121
  store i16 24480, ptr %139, align 2
  %141 = getelementptr i16, ptr %11, i32 122
  store i16 24485, ptr %140, align 2
  %142 = getelementptr i16, ptr %11, i32 123
  store i16 24490, ptr %141, align 2
  %143 = getelementptr i16, ptr %11, i32 124
  store i16 24495, ptr %142, align 2
  %144 = getelementptr i16, ptr %11, i32 125
  store i16 24560, ptr %143, align 2
  %145 = getelementptr i16, ptr %11, i32 126
  store i16 24565, ptr %144, align 2
  %146 = getelementptr i16, ptr %11, i32 127
  store i16 24570, ptr %145, align 2
  %147 = getelementptr i16, ptr %11, i32 128
  store i16 24575, ptr %146, align 2
  %148 = getelementptr i16, ptr %11, i32 129
  store i16 -24576, ptr %147, align 2
  %149 = getelementptr i16, ptr %11, i32 130
  store i16 -24571, ptr %148, align 2
  %150 = getelementptr i16, ptr %11, i32 131
  store i16 -24566, ptr %149, align 2
  %151 = getelementptr i16, ptr %11, i32 132
  store i16 -24561, ptr %150, align 2
  %152 = getelementptr i16, ptr %11, i32 133
  store i16 -24496, ptr %151, align 2
  %153 = getelementptr i16, ptr %11, i32 134
  store i16 -24491, ptr %152, align 2
  %154 = getelementptr i16, ptr %11, i32 135
  store i16 -24486, ptr %153, align 2
  %155 = getelementptr i16, ptr %11, i32 136
  store i16 -24481, ptr %154, align 2
  %156 = getelementptr i16, ptr %11, i32 137
  store i16 -24416, ptr %155, align 2
  %157 = getelementptr i16, ptr %11, i32 138
  store i16 -24411, ptr %156, align 2
  %158 = getelementptr i16, ptr %11, i32 139
  store i16 -24406, ptr %157, align 2
  %159 = getelementptr i16, ptr %11, i32 140
  store i16 -24401, ptr %158, align 2
  %160 = getelementptr i16, ptr %11, i32 141
  store i16 -24336, ptr %159, align 2
  %161 = getelementptr i16, ptr %11, i32 142
  store i16 -24331, ptr %160, align 2
  %162 = getelementptr i16, ptr %11, i32 143
  store i16 -24326, ptr %161, align 2
  %163 = getelementptr i16, ptr %11, i32 144
  store i16 -24321, ptr %162, align 2
  %164 = getelementptr i16, ptr %11, i32 145
  store i16 -23296, ptr %163, align 2
  %165 = getelementptr i16, ptr %11, i32 146
  store i16 -23291, ptr %164, align 2
  %166 = getelementptr i16, ptr %11, i32 147
  store i16 -23286, ptr %165, align 2
  %167 = getelementptr i16, ptr %11, i32 148
  store i16 -23281, ptr %166, align 2
  %168 = getelementptr i16, ptr %11, i32 149
  store i16 -23216, ptr %167, align 2
  %169 = getelementptr i16, ptr %11, i32 150
  store i16 -23211, ptr %168, align 2
  %170 = getelementptr i16, ptr %11, i32 151
  store i16 -23206, ptr %169, align 2
  %171 = getelementptr i16, ptr %11, i32 152
  store i16 -23201, ptr %170, align 2
  %172 = getelementptr i16, ptr %11, i32 153
  store i16 -23136, ptr %171, align 2
  %173 = getelementptr i16, ptr %11, i32 154
  store i16 -23131, ptr %172, align 2
  %174 = getelementptr i16, ptr %11, i32 155
  store i16 -23126, ptr %173, align 2
  %175 = getelementptr i16, ptr %11, i32 156
  store i16 -23121, ptr %174, align 2
  %176 = getelementptr i16, ptr %11, i32 157
  store i16 -23056, ptr %175, align 2
  %177 = getelementptr i16, ptr %11, i32 158
  store i16 -23051, ptr %176, align 2
  %178 = getelementptr i16, ptr %11, i32 159
  store i16 -23046, ptr %177, align 2
  %179 = getelementptr i16, ptr %11, i32 160
  store i16 -23041, ptr %178, align 2
  %180 = getelementptr i16, ptr %11, i32 161
  store i16 -22016, ptr %179, align 2
  %181 = getelementptr i16, ptr %11, i32 162
  store i16 -22011, ptr %180, align 2
  %182 = getelementptr i16, ptr %11, i32 163
  store i16 -22006, ptr %181, align 2
  %183 = getelementptr i16, ptr %11, i32 164
  store i16 -22001, ptr %182, align 2
  %184 = getelementptr i16, ptr %11, i32 165
  store i16 -21936, ptr %183, align 2
  %185 = getelementptr i16, ptr %11, i32 166
  store i16 -21931, ptr %184, align 2
  %186 = getelementptr i16, ptr %11, i32 167
  store i16 -21926, ptr %185, align 2
  %187 = getelementptr i16, ptr %11, i32 168
  store i16 -21921, ptr %186, align 2
  %188 = getelementptr i16, ptr %11, i32 169
  store i16 -21856, ptr %187, align 2
  %189 = getelementptr i16, ptr %11, i32 170
  store i16 -21851, ptr %188, align 2
  %190 = getelementptr i16, ptr %11, i32 171
  store i16 -21846, ptr %189, align 2
  %191 = getelementptr i16, ptr %11, i32 172
  store i16 -21841, ptr %190, align 2
  %192 = getelementptr i16, ptr %11, i32 173
  store i16 -21776, ptr %191, align 2
  %193 = getelementptr i16, ptr %11, i32 174
  store i16 -21771, ptr %192, align 2
  %194 = getelementptr i16, ptr %11, i32 175
  store i16 -21766, ptr %193, align 2
  %195 = getelementptr i16, ptr %11, i32 176
  store i16 -21761, ptr %194, align 2
  %196 = getelementptr i16, ptr %11, i32 177
  store i16 -20736, ptr %195, align 2
  %197 = getelementptr i16, ptr %11, i32 178
  store i16 -20731, ptr %196, align 2
  %198 = getelementptr i16, ptr %11, i32 179
  store i16 -20726, ptr %197, align 2
  %199 = getelementptr i16, ptr %11, i32 180
  store i16 -20721, ptr %198, align 2
  %200 = getelementptr i16, ptr %11, i32 181
  store i16 -20656, ptr %199, align 2
  %201 = getelementptr i16, ptr %11, i32 182
  store i16 -20651, ptr %200, align 2
  %202 = getelementptr i16, ptr %11, i32 183
  store i16 -20646, ptr %201, align 2
  %203 = getelementptr i16, ptr %11, i32 184
  store i16 -20641, ptr %202, align 2
  %204 = getelementptr i16, ptr %11, i32 185
  store i16 -20576, ptr %203, align 2
  %205 = getelementptr i16, ptr %11, i32 186
  store i16 -20571, ptr %204, align 2
  %206 = getelementptr i16, ptr %11, i32 187
  store i16 -20566, ptr %205, align 2
  %207 = getelementptr i16, ptr %11, i32 188
  store i16 -20561, ptr %206, align 2
  %208 = getelementptr i16, ptr %11, i32 189
  store i16 -20496, ptr %207, align 2
  %209 = getelementptr i16, ptr %11, i32 190
  store i16 -20491, ptr %208, align 2
  %210 = getelementptr i16, ptr %11, i32 191
  store i16 -20486, ptr %209, align 2
  %211 = getelementptr i16, ptr %11, i32 192
  store i16 -20481, ptr %210, align 2
  %212 = getelementptr i16, ptr %11, i32 193
  store i16 -4096, ptr %211, align 2
  %213 = getelementptr i16, ptr %11, i32 194
  store i16 -4091, ptr %212, align 2
  %214 = getelementptr i16, ptr %11, i32 195
  store i16 -4086, ptr %213, align 2
  %215 = getelementptr i16, ptr %11, i32 196
  store i16 -4081, ptr %214, align 2
  %216 = getelementptr i16, ptr %11, i32 197
  store i16 -4016, ptr %215, align 2
  %217 = getelementptr i16, ptr %11, i32 198
  store i16 -4011, ptr %216, align 2
  %218 = getelementptr i16, ptr %11, i32 199
  store i16 -4006, ptr %217, align 2
  %219 = getelementptr i16, ptr %11, i32 200
  store i16 -4001, ptr %218, align 2
  %220 = getelementptr i16, ptr %11, i32 201
  store i16 -3936, ptr %219, align 2
  %221 = getelementptr i16, ptr %11, i32 202
  store i16 -3931, ptr %220, align 2
  %222 = getelementptr i16, ptr %11, i32 203
  store i16 -3926, ptr %221, align 2
  %223 = getelementptr i16, ptr %11, i32 204
  store i16 -3921, ptr %222, align 2
  %224 = getelementptr i16, ptr %11, i32 205
  store i16 -3856, ptr %223, align 2
  %225 = getelementptr i16, ptr %11, i32 206
  store i16 -3851, ptr %224, align 2
  %226 = getelementptr i16, ptr %11, i32 207
  store i16 -3846, ptr %225, align 2
  %227 = getelementptr i16, ptr %11, i32 208
  store i16 -3841, ptr %226, align 2
  %228 = getelementptr i16, ptr %11, i32 209
  store i16 -2816, ptr %227, align 2
  %229 = getelementptr i16, ptr %11, i32 210
  store i16 -2811, ptr %228, align 2
  %230 = getelementptr i16, ptr %11, i32 211
  store i16 -2806, ptr %229, align 2
  %231 = getelementptr i16, ptr %11, i32 212
  store i16 -2801, ptr %230, align 2
  %232 = getelementptr i16, ptr %11, i32 213
  store i16 -2736, ptr %231, align 2
  %233 = getelementptr i16, ptr %11, i32 214
  store i16 -2731, ptr %232, align 2
  %234 = getelementptr i16, ptr %11, i32 215
  store i16 -2726, ptr %233, align 2
  %235 = getelementptr i16, ptr %11, i32 216
  store i16 -2721, ptr %234, align 2
  %236 = getelementptr i16, ptr %11, i32 217
  store i16 -2656, ptr %235, align 2
  %237 = getelementptr i16, ptr %11, i32 218
  store i16 -2651, ptr %236, align 2
  %238 = getelementptr i16, ptr %11, i32 219
  store i16 -2646, ptr %237, align 2
  %239 = getelementptr i16, ptr %11, i32 220
  store i16 -2641, ptr %238, align 2
  %240 = getelementptr i16, ptr %11, i32 221
  store i16 -2576, ptr %239, align 2
  %241 = getelementptr i16, ptr %11, i32 222
  store i16 -2571, ptr %240, align 2
  %242 = getelementptr i16, ptr %11, i32 223
  store i16 -2566, ptr %241, align 2
  %243 = getelementptr i16, ptr %11, i32 224
  store i16 -2561, ptr %242, align 2
  %244 = getelementptr i16, ptr %11, i32 225
  store i16 -1536, ptr %243, align 2
  %245 = getelementptr i16, ptr %11, i32 226
  store i16 -1531, ptr %244, align 2
  %246 = getelementptr i16, ptr %11, i32 227
  store i16 -1526, ptr %245, align 2
  %247 = getelementptr i16, ptr %11, i32 228
  store i16 -1521, ptr %246, align 2
  %248 = getelementptr i16, ptr %11, i32 229
  store i16 -1456, ptr %247, align 2
  %249 = getelementptr i16, ptr %11, i32 230
  store i16 -1451, ptr %248, align 2
  %250 = getelementptr i16, ptr %11, i32 231
  store i16 -1446, ptr %249, align 2
  %251 = getelementptr i16, ptr %11, i32 232
  store i16 -1441, ptr %250, align 2
  %252 = getelementptr i16, ptr %11, i32 233
  store i16 -1376, ptr %251, align 2
  %253 = getelementptr i16, ptr %11, i32 234
  store i16 -1371, ptr %252, align 2
  %254 = getelementptr i16, ptr %11, i32 235
  store i16 -1366, ptr %253, align 2
  %255 = getelementptr i16, ptr %11, i32 236
  store i16 -1361, ptr %254, align 2
  %256 = getelementptr i16, ptr %11, i32 237
  store i16 -1296, ptr %255, align 2
  %257 = getelementptr i16, ptr %11, i32 238
  store i16 -1291, ptr %256, align 2
  %258 = getelementptr i16, ptr %11, i32 239
  store i16 -1286, ptr %257, align 2
  %259 = getelementptr i16, ptr %11, i32 240
  store i16 -1281, ptr %258, align 2
  %260 = getelementptr i16, ptr %11, i32 241
  store i16 -256, ptr %259, align 2
  %261 = getelementptr i16, ptr %11, i32 242
  store i16 -251, ptr %260, align 2
  %262 = getelementptr i16, ptr %11, i32 243
  store i16 -246, ptr %261, align 2
  %263 = getelementptr i16, ptr %11, i32 244
  store i16 -241, ptr %262, align 2
  %264 = getelementptr i16, ptr %11, i32 245
  store i16 -176, ptr %263, align 2
  %265 = getelementptr i16, ptr %11, i32 246
  store i16 -171, ptr %264, align 2
  %266 = getelementptr i16, ptr %11, i32 247
  store i16 -166, ptr %265, align 2
  %267 = getelementptr i16, ptr %11, i32 248
  store i16 -161, ptr %266, align 2
  %268 = getelementptr i16, ptr %11, i32 249
  store i16 -96, ptr %267, align 2
  %269 = getelementptr i16, ptr %11, i32 250
  store i16 -91, ptr %268, align 2
  %270 = getelementptr i16, ptr %11, i32 251
  store i16 -86, ptr %269, align 2
  %271 = getelementptr i16, ptr %11, i32 252
  store i16 -81, ptr %270, align 2
  %272 = getelementptr i16, ptr %11, i32 253
  store i16 -16, ptr %271, align 2
  %273 = getelementptr i16, ptr %11, i32 254
  store i16 -11, ptr %272, align 2
  %274 = getelementptr i16, ptr %11, i32 255
  store i16 -6, ptr %273, align 2
  store i16 -1, ptr %274, align 2
  %275 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @sti_cursor_plane_helpers_funcs, ptr noundef nonnull @cursor_supported_formats, i32 noundef 1, ptr noundef null, i32 noundef 2, ptr noundef null) #3
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #3
  %278 = load ptr, ptr %12, align 8
  %279 = load i32, ptr %10, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 512, ptr noundef %278, i32 noundef %279, i32 noundef 4) #3
  br label %282

280:                                              ; preds = %15
  %281 = getelementptr inbounds %struct.drm_plane, ptr %6, i32 0, i32 18
  store ptr @sti_cursor_helpers_funcs, ptr %281, align 8
  tail call void @sti_plane_init_property(ptr noundef nonnull %6, i32 noundef 2) #3
  br label %283

282:                                              ; preds = %277, %14
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %6) #3
  br label %283

283:                                              ; preds = %282, %280, %8
  %284 = phi ptr [ null, %282 ], [ %6, %280 ], [ null, %8 ]
  ret ptr %284
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_cursor_late_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  store ptr %0, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @cursor_debugfs_files, i32 0, i32 0, i32 3), align 4
  %5 = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @cursor_debugfs_files, i32 noundef 1, ptr noundef %6, ptr noundef %4) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cursor_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @sti_plane_to_str(ptr noundef %8) #3
  %10 = getelementptr inbounds %struct.sti_cursor, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %9, ptr noundef %11) #3
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %13) #3
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %16) #3
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %20 = and i32 %19, 4095
  %21 = lshr i32 %19, 16
  %22 = and i32 %21, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %20, i32 noundef %22) #3
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef %25) #3
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %29 = getelementptr inbounds %struct.sti_cursor, ptr %8, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.sti_cursor, ptr %8, i32 0, i32 7, i32 2
  %34 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %34) #3
  br label %35

35:                                               ; preds = %32, %2
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %38) #3
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr i8, ptr %39, i32 28
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %41) #3
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr i8, ptr %42, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %45 = and i32 %44, 2047
  %46 = lshr i32 %44, 16
  %47 = and i32 %46, 2047
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %45, i32 noundef %47) #3
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef %50) #3
  %51 = load ptr, ptr %10, align 4
  %52 = getelementptr i8, ptr %51, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %54 = getelementptr inbounds %struct.sti_cursor, ptr %8, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.sti_cursor, ptr %8, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %59) #3
  br label %60

60:                                               ; preds = %57, %35
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr i8, ptr %61, i32 40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef %63) #3
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 44
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, i32 noundef %66) #3
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_cursor_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %10, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %96

16:                                               ; preds = %2
  %17 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef nonnull %10) #3
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 13
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = sub i32 %26, %19
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %27)
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 20
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub i32 %33, %21
  %35 = tail call i32 @llvm.umin.i32(i32 %30, i32 %34)
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = icmp ult i32 %37, 65536
  %43 = icmp ult i32 %40, 65536
  %44 = select i1 %42, i1 true, i1 %43
  %45 = icmp ugt i32 %37, 8454143
  %46 = or i1 %45, %44
  %47 = icmp ugt i32 %40, 8454143
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %38, i32 noundef %41) #3
  br label %96

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7
  %52 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 3
  br i1 %54, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %55, align 8
  %58 = icmp eq i32 %57, %38
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %41
  br i1 %62, label %84, label %65

63:                                               ; preds = %50
  store i32 %38, ptr %55, align 8
  %64 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 4
  store i32 %41, ptr %64, align 4
  br label %74

65:                                               ; preds = %59, %56
  store i32 %38, ptr %55, align 8
  %66 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 4
  store i32 %41, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %51, align 8
  tail call void @dma_free_attrs(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %53, i32 noundef %71, i32 noundef 4) #3
  %72 = load i32, ptr %55, align 8
  %73 = load i32, ptr %66, align 4
  br label %74

74:                                               ; preds = %65, %63
  %75 = phi i32 [ %73, %65 ], [ %41, %63 ]
  %76 = phi i32 [ %72, %65 ], [ %38, %63 ]
  %77 = mul i32 %75, %76
  %78 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7, i32 1
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = tail call ptr @dma_alloc_attrs(ptr noundef %80, i32 noundef %77, ptr noundef %51, i32 noundef 3265, i32 noundef 4) #3
  store ptr %81, ptr %52, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #3
  br label %96

84:                                               ; preds = %74, %59
  %85 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %12, i32 noundef 0) #3
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #3
  br label %96

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %10, i32 -16
  %92 = tail call ptr @sti_mixer_to_str(ptr noundef %91) #3
  %93 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %94 = load i32, ptr %93, align 8
  %95 = tail call ptr @sti_plane_to_str(ptr noundef %0) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %90, ptr noundef %92, i32 noundef %94, ptr noundef %95) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %28, i32 noundef %35, i32 noundef %19, i32 noundef %21) #3
  br label %96

96:                                               ; preds = %88, %87, %83, %49, %2
  %97 = phi i32 [ -22, %49 ], [ 0, %88 ], [ -22, %87 ], [ -22, %83 ], [ 0, %2 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_cursor_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %10, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %119

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %12, i32 noundef 0) #3
  %23 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %22, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 8
  br label %33

33:                                               ; preds = %64, %26
  %34 = phi i32 [ %24, %26 ], [ %65, %64 ]
  %35 = phi i32 [ %32, %26 ], [ %66, %64 ]
  %36 = phi i32 [ 0, %26 ], [ %69, %64 ]
  %37 = phi ptr [ %30, %26 ], [ %68, %64 ]
  %38 = phi ptr [ %28, %26 ], [ %67, %64 ]
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %40, %33
  %41 = phi i32 [ %59, %40 ], [ 0, %33 ]
  %42 = phi ptr [ %58, %40 ], [ %37, %33 ]
  %43 = phi ptr [ %57, %40 ], [ %38, %33 ]
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 6
  %46 = and i32 %45, 3
  %47 = lshr i32 %44, 24
  %48 = and i32 %47, 192
  %49 = lshr i32 %44, 18
  %50 = and i32 %49, 48
  %51 = or i32 %48, %50
  %52 = lshr i32 %44, 12
  %53 = and i32 %52, 12
  %54 = or i32 %51, %53
  %55 = or i32 %54, %46
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %42, align 1
  %57 = getelementptr i32, ptr %43, i32 1
  %58 = getelementptr i8, ptr %42, i32 1
  %59 = add nuw i32 %41, 1
  %60 = load i32, ptr %31, align 8
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %40, label %62

62:                                               ; preds = %40
  %63 = load i32, ptr %23, align 4
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i32 [ %34, %33 ], [ %63, %62 ]
  %66 = phi i32 [ 0, %33 ], [ %60, %62 ]
  %67 = phi ptr [ %38, %33 ], [ %57, %62 ]
  %68 = phi ptr [ %37, %33 ], [ %58, %62 ]
  %69 = add nuw i32 %36, 1
  %70 = icmp ult i32 %69, %65
  br i1 %70, label %33, label %71

71:                                               ; preds = %64, %16
  %72 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef 0) #3
  %73 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef 0) #3
  %74 = shl i32 %72, 16
  %75 = or i32 %74, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %76 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #3, !srcloc !22
  %79 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 6
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = add nsw i32 %81, -1
  %83 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef %82) #3
  %84 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 12, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = add nsw i32 %86, -1
  %88 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef %87) #3
  %89 = shl i32 %83, 16
  %90 = or i32 %88, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %91 = load ptr, ptr %76, align 4
  %92 = getelementptr i8, ptr %91, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #3, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %93 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 7
  %94 = load i32, ptr %93, align 8
  %95 = load ptr, ptr %76, align 4
  %96 = getelementptr i8, ptr %95, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #3, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %97 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 3
  %98 = load i32, ptr %97, align 8
  %99 = load ptr, ptr %76, align 4
  %100 = getelementptr i8, ptr %99, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #3, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %101 = load i32, ptr %23, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, ptr %97, align 8
  %104 = or i32 %102, %103
  %105 = load ptr, ptr %76, align 4
  %106 = getelementptr i8, ptr %105, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #3, !srcloc !22
  %107 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef %21) #3
  %108 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %17, i32 noundef %19) #3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %109 = shl i32 %107, 16
  %110 = or i32 %109, %108
  %111 = load ptr, ptr %76, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #3, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %113 = getelementptr inbounds %struct.sti_cursor, ptr %0, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %76, align 4
  %116 = getelementptr i8, ptr %115, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #3, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %117 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 2) #3, !srcloc !22
  tail call void @sti_plane_update_fps(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #3
  %118 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 1, ptr %118, align 4
  br label %119

119:                                              ; preds = %71, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_cursor_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %14) #3
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %10, i32 -16
  %19 = tail call ptr @sti_mixer_to_str(ptr noundef %18) #3
  %20 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = tail call ptr @sti_plane_to_str(ptr noundef %0) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %22) #3
  %23 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 2
  store i32 2, ptr %23, align 4
  br label %24

24:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 4962163}
!9 = !{i64 2155245560}
!10 = !{i64 2155245996}
!11 = !{i64 2155246341}
!12 = !{i64 2155246777}
!13 = !{i64 2155247122}
!14 = !{i64 2155247558}
!15 = !{i64 2155247995}
!16 = !{i64 2155248340}
!17 = !{i64 2155248776}
!18 = !{i64 2155249121}
!19 = !{i64 2155249557}
!20 = !{i64 2155249993}
!21 = !{i64 2155301362}
!22 = !{i64 4961745}
!23 = !{i64 2155301685}
!24 = !{i64 2155302025}
!25 = !{i64 2155302392}
!26 = !{i64 2155302768}
!27 = !{i64 2155303167}
!28 = !{i64 2155303525}
!29 = !{i64 2155303984}
