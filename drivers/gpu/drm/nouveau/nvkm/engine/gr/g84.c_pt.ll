; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.123 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_gr = type { %struct.nvkm_gr, ptr, %struct.spinlock, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@.str = private unnamed_addr constant [40 x i8] c"%s: PGRAPH TLB flush idle timeout fail\0A\00", align 1
@nv50_gr_status = internal constant [26 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.4 }, %struct.nvkm_bitfield { i32 2, ptr @.str.5 }, %struct.nvkm_bitfield { i32 4, ptr @.str.6 }, %struct.nvkm_bitfield { i32 8, ptr @.str.7 }, %struct.nvkm_bitfield { i32 16, ptr @.str.8 }, %struct.nvkm_bitfield { i32 32, ptr @.str.9 }, %struct.nvkm_bitfield { i32 64, ptr @.str.10 }, %struct.nvkm_bitfield { i32 128, ptr @.str.11 }, %struct.nvkm_bitfield { i32 256, ptr @.str.12 }, %struct.nvkm_bitfield { i32 512, ptr @.str.13 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.14 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.15 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.16 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.17 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.18 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.19 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.20 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.21 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.22 }, %struct.nvkm_bitfield { i32 524288, ptr @.str.23 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.24 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.25 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.26 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.27 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.28 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: PGRAPH_STATUS %08x [%s]\0A\00", align 1
@nv50_gr_vstatus_0 = internal constant [8 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.13 }, %struct.nvkm_bitfield { i32 2, ptr @.str.30 }, %struct.nvkm_bitfield { i32 4, ptr @.str.31 }, %struct.nvkm_bitfield { i32 8, ptr @.str.32 }, %struct.nvkm_bitfield { i32 16, ptr @.str.33 }, %struct.nvkm_bitfield { i32 32, ptr @.str.34 }, %struct.nvkm_bitfield { i32 64, ptr @.str.16 }, %struct.nvkm_bitfield zeroinitializer], align 4
@nv50_gr_vstatus_1 = internal constant [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.23 }, %struct.nvkm_bitfield { i32 2, ptr @.str.24 }, %struct.nvkm_bitfield { i32 4, ptr @.str.25 }, %struct.nvkm_bitfield { i32 8, ptr @.str.26 }, %struct.nvkm_bitfield { i32 16, ptr @.str.27 }, %struct.nvkm_bitfield zeroinitializer], align 4
@nv50_gr_vstatus_2 = internal constant [9 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.35 }, %struct.nvkm_bitfield { i32 2, ptr @.str.36 }, %struct.nvkm_bitfield { i32 4, ptr @.str.18 }, %struct.nvkm_bitfield { i32 8, ptr @.str.19 }, %struct.nvkm_bitfield { i32 16, ptr @.str.20 }, %struct.nvkm_bitfield { i32 32, ptr @.str.21 }, %struct.nvkm_bitfield { i32 64, ptr @.str.22 }, %struct.nvkm_bitfield { i32 128, ptr @.str.28 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/g84.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DISPATCH\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"UNK2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"UNK3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"UNK4\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"UNK5\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"M2MF\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"UNK7\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CTXPROG\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"VFETCH\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CCACHE_PREGEOM\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"STRMOUT_VATTR_POSTGEOM\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"VCLIP\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"RATTR_APLANE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"TRAST\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"CLIPID\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ZCULL\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ENG2D\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"RMASK\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"TPC_RAST\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"TPC_PROP\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"TPC_TEX\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"TPC_GEOM\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"TPC_MP\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ROP\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"%s: PGRAPH_VSTATUS%d: %08x [%s]\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"CCACHE\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"PREGEOM\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"POSTGEOM\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"VATTR\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"STRMOUT\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"RATTR\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"APLANE\00", align 1
@nv50_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@g84_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.123, [6 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv50_gr_init, ptr null, ptr @nv50_gr_intr, ptr null, ptr @g84_gr_tlb_flush, ptr @nv50_gr_chan_new, ptr null, ptr @nv50_gr_units, ptr null, %struct.anon.123 zeroinitializer, [6 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20525, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20537, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20672, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 33431, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_gr_tlb_flush(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca [64 x i8], align 1
  %4 = alloca [64 x i8], align 1
  %5 = alloca [128 x i8], align 1
  %6 = alloca %struct.nvkm_timer_wait, align 8
  %7 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.nv50_gr, ptr %0, i32 0, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4195584
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %17 = and i32 %16, -2
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 4195584
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !12
  %20 = tail call i64 @nvkm_timer_read(ptr noundef %10) #5
  br label %21

21:                                               ; preds = %63, %1
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr i8, ptr %22, i32 4195200
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %26, %21
  %27 = phi i32 [ %30, %26 ], [ %24, %21 ]
  %28 = and i32 %27, 7
  %29 = icmp ne i32 %28, 1
  %30 = lshr i32 %27, 3
  %31 = icmp ugt i32 %27, 7
  %32 = and i1 %31, %29
  br i1 %32, label %26, label %33

33:                                               ; preds = %26, %21
  %34 = phi i1 [ true, %21 ], [ %29, %26 ]
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr i8, ptr %35, i32 4195204
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, i1 %34, i1 false
  br i1 %39, label %40, label %47

40:                                               ; preds = %40, %33
  %41 = phi i32 [ %44, %40 ], [ %37, %33 ]
  %42 = and i32 %41, 7
  %43 = icmp ne i32 %42, 1
  %44 = lshr i32 %41, 3
  %45 = icmp ugt i32 %41, 7
  %46 = and i1 %45, %43
  br i1 %46, label %40, label %47

47:                                               ; preds = %40, %33
  %48 = phi i1 [ %34, %33 ], [ %43, %40 ]
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i8, ptr %49, i32 4195208
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %52, i1 %48, i1 false
  br i1 %53, label %54, label %61

54:                                               ; preds = %54, %47
  %55 = phi i32 [ %58, %54 ], [ %51, %47 ]
  %56 = and i32 %55, 7
  %57 = icmp ne i32 %56, 1
  %58 = lshr i32 %55, 3
  %59 = icmp ugt i32 %55, 7
  %60 = and i1 %59, %57
  br i1 %60, label %54, label %61

61:                                               ; preds = %54, %47
  %62 = phi i1 [ %48, %47 ], [ %57, %54 ]
  br i1 %62, label %253, label %63

63:                                               ; preds = %61
  %64 = tail call i64 @nvkm_timer_read(ptr noundef %10) #5
  %65 = sub i64 %64, %20
  %66 = icmp ugt i64 %65, 2000000000
  br i1 %66, label %67, label %21

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %7, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str, ptr noundef %75) #6
  br label %76

76:                                               ; preds = %71, %67
  %77 = load ptr, ptr %13, align 4
  %78 = getelementptr i8, ptr %77, i32 4196096
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  call void @nvkm_snprintbf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @nv50_gr_status, i32 noundef %79) #5
  %80 = load i32, ptr %68, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.1, ptr noundef %86, i32 noundef %79, ptr noundef nonnull %5) #6
  br label %87

87:                                               ; preds = %82, %76
  %88 = load ptr, ptr %13, align 4
  %89 = getelementptr i8, ptr %88, i32 4195200
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #5, !annotation !8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %135, label %92

92:                                               ; preds = %87
  %93 = and i32 %90, 7
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i8
  %96 = icmp ugt i32 %90, 7
  br i1 %96, label %97, label %132

97:                                               ; preds = %92
  %98 = and i32 %90, 56
  %99 = icmp eq i32 %98, 8
  %100 = select i1 %99, i8 2, i8 0
  %101 = or i8 %100, %95
  %102 = icmp ugt i32 %90, 63
  br i1 %102, label %103, label %132

103:                                              ; preds = %97
  %104 = and i32 %90, 448
  %105 = icmp eq i32 %104, 64
  %106 = select i1 %105, i8 4, i8 0
  %107 = or i8 %106, %101
  %108 = icmp ugt i32 %90, 511
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  %110 = and i32 %90, 3584
  %111 = icmp eq i32 %110, 512
  %112 = select i1 %111, i8 8, i8 0
  %113 = or i8 %112, %107
  %114 = icmp ugt i32 %90, 4095
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = and i32 %90, 28672
  %117 = icmp eq i32 %116, 4096
  %118 = select i1 %117, i8 16, i8 0
  %119 = or i8 %118, %113
  %120 = icmp ugt i32 %90, 32767
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = and i32 %90, 229376
  %123 = icmp eq i32 %122, 32768
  %124 = select i1 %123, i8 32, i8 0
  %125 = or i8 %124, %119
  %126 = icmp ugt i32 %90, 262143
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = and i32 %90, 1835008
  %129 = icmp eq i32 %128, 262144
  %130 = select i1 %129, i8 64, i8 0
  %131 = or i8 %130, %125
  br label %132

132:                                              ; preds = %127, %121, %115, %109, %103, %97, %92
  %133 = phi i8 [ %95, %92 ], [ %101, %97 ], [ %107, %103 ], [ %113, %109 ], [ %119, %115 ], [ %125, %121 ], [ %131, %127 ]
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %132, %87
  %136 = phi i32 [ 0, %87 ], [ %134, %132 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_0, i32 noundef %136) #5
  %137 = load i32, ptr %68, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %7, align 4
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.29, ptr noundef %143, i32 noundef 0, i32 noundef %90, ptr noundef nonnull %4) #6
  br label %144

144:                                              ; preds = %139, %135
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  %145 = load ptr, ptr %13, align 4
  %146 = getelementptr i8, ptr %145, i32 4195204
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #5, !annotation !8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %180, label %149

149:                                              ; preds = %144
  %150 = and i32 %147, 7
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i8
  %153 = icmp ugt i32 %147, 7
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = and i32 %147, 56
  %156 = icmp eq i32 %155, 8
  %157 = select i1 %156, i8 2, i8 0
  %158 = or i8 %157, %152
  %159 = icmp ugt i32 %147, 63
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = and i32 %147, 448
  %162 = icmp eq i32 %161, 64
  %163 = select i1 %162, i8 4, i8 0
  %164 = or i8 %163, %158
  %165 = icmp ugt i32 %147, 511
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = and i32 %147, 3584
  %168 = icmp eq i32 %167, 512
  %169 = select i1 %168, i8 8, i8 0
  %170 = or i8 %169, %164
  %171 = icmp ugt i32 %147, 4095
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = and i32 %147, 28672
  %174 = icmp eq i32 %173, 4096
  %175 = select i1 %174, i8 16, i8 0
  %176 = or i8 %175, %170
  br label %177

177:                                              ; preds = %172, %166, %160, %154, %149
  %178 = phi i8 [ %152, %149 ], [ %158, %154 ], [ %164, %160 ], [ %170, %166 ], [ %176, %172 ]
  %179 = zext i8 %178 to i32
  br label %180

180:                                              ; preds = %177, %144
  %181 = phi i32 [ 0, %144 ], [ %179, %177 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_1, i32 noundef %181) #5
  %182 = load i32, ptr %68, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %7, align 4
  %186 = getelementptr inbounds %struct.nvkm_device, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8
  %188 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.29, ptr noundef %188, i32 noundef 1, i32 noundef %147, ptr noundef nonnull %3) #6
  br label %189

189:                                              ; preds = %184, %180
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  %190 = load ptr, ptr %13, align 4
  %191 = getelementptr i8, ptr %190, i32 4195208
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #5, !annotation !8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %243, label %194

194:                                              ; preds = %189
  %195 = and i32 %192, 7
  %196 = icmp eq i32 %195, 1
  %197 = zext i1 %196 to i8
  %198 = icmp ugt i32 %192, 7
  br i1 %198, label %199, label %240

199:                                              ; preds = %194
  %200 = and i32 %192, 56
  %201 = icmp eq i32 %200, 8
  %202 = select i1 %201, i8 2, i8 0
  %203 = or i8 %202, %197
  %204 = icmp ugt i32 %192, 63
  br i1 %204, label %205, label %240

205:                                              ; preds = %199
  %206 = and i32 %192, 448
  %207 = icmp eq i32 %206, 64
  %208 = select i1 %207, i8 4, i8 0
  %209 = or i8 %208, %203
  %210 = icmp ugt i32 %192, 511
  br i1 %210, label %211, label %240

211:                                              ; preds = %205
  %212 = and i32 %192, 3584
  %213 = icmp eq i32 %212, 512
  %214 = select i1 %213, i8 8, i8 0
  %215 = or i8 %214, %209
  %216 = icmp ugt i32 %192, 4095
  br i1 %216, label %217, label %240

217:                                              ; preds = %211
  %218 = and i32 %192, 28672
  %219 = icmp eq i32 %218, 4096
  %220 = select i1 %219, i8 16, i8 0
  %221 = or i8 %220, %215
  %222 = icmp ugt i32 %192, 32767
  br i1 %222, label %223, label %240

223:                                              ; preds = %217
  %224 = and i32 %192, 229376
  %225 = icmp eq i32 %224, 32768
  %226 = select i1 %225, i8 32, i8 0
  %227 = or i8 %226, %221
  %228 = icmp ugt i32 %192, 262143
  br i1 %228, label %229, label %240

229:                                              ; preds = %223
  %230 = and i32 %192, 1835008
  %231 = icmp eq i32 %230, 262144
  %232 = select i1 %231, i8 64, i8 0
  %233 = or i8 %232, %227
  %234 = icmp ugt i32 %192, 2097151
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = and i32 %192, 14680064
  %237 = icmp eq i32 %236, 2097152
  %238 = select i1 %237, i8 -128, i8 0
  %239 = or i8 %238, %233
  br label %240

240:                                              ; preds = %235, %229, %223, %217, %211, %205, %199, %194
  %241 = phi i8 [ %197, %194 ], [ %203, %199 ], [ %209, %205 ], [ %215, %211 ], [ %221, %217 ], [ %227, %223 ], [ %233, %229 ], [ %239, %235 ]
  %242 = zext i8 %241 to i32
  br label %243

243:                                              ; preds = %240, %189
  %244 = phi i32 [ 0, %189 ], [ %242, %240 ]
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @nv50_gr_vstatus_2, i32 noundef %244) #5
  %245 = load i32, ptr %68, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr %7, align 4
  %249 = getelementptr inbounds %struct.nvkm_device, ptr %248, i32 0, i32 2
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.29, ptr noundef %251, i32 noundef 2, i32 noundef %192, ptr noundef nonnull %2) #6
  br label %252

252:                                              ; preds = %247, %243
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #5
  br label %253

253:                                              ; preds = %252, %61
  %254 = load ptr, ptr %13, align 4
  %255 = getelementptr i8, ptr %254, i32 1051776
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 1) #5, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %6) #5
  br label %256

256:                                              ; preds = %262, %253
  %257 = load ptr, ptr %13, align 4
  %258 = getelementptr i8, ptr %257, i32 1051776
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %284, label %262

262:                                              ; preds = %256
  %263 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %6) #5
  %264 = icmp sgt i64 %263, -1
  br i1 %264, label %256, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %6, align 8
  %267 = getelementptr inbounds %struct.nvkm_timer, ptr %266, i32 0, i32 1, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.nvkm_device, ptr %268, i32 0, i32 2
  %270 = load ptr, ptr %269, align 8
  %271 = call ptr @dev_driver_string(ptr noundef %270) #5
  %272 = load ptr, ptr %6, align 8
  %273 = getelementptr inbounds %struct.nvkm_timer, ptr %272, i32 0, i32 1, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.nvkm_device, ptr %274, i32 0, i32 2
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %265
  %281 = load ptr, ptr %276, align 4
  br label %282

282:                                              ; preds = %280, %265
  %283 = phi ptr [ %281, %280 ], [ %278, %265 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %271, ptr noundef %283) #5
  br label %284

284:                                              ; preds = %282, %256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5
  %285 = load ptr, ptr %13, align 4
  %286 = getelementptr i8, ptr %285, i32 4195584
  %287 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %288 = or i32 %287, 1
  %289 = load ptr, ptr %13, align 4
  %290 = getelementptr i8, ptr %289, i32 4195584
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %288) #5, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  %291 = select i1 %62, i32 0, i32 -16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #5
  ret i32 %291
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g84_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_gr_new_(ptr noundef nonnull @g84_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_gr_intr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_gr_chan_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv50_gr_units(ptr noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 3949504}
!10 = !{i64 2151488957}
!11 = !{i64 2151490179}
!12 = !{i64 3949086}
