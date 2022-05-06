; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.132, %struct.anon.132, %struct.anon.132, %struct.anon.132, i16 }
%struct.anon.132 = type { ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.133, %struct.anon.133, %struct.anon.133, %struct.anon.134, %struct.anon.135, ptr, ptr, [81 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.133 = type { i32, i32 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.anon.135 = type { i32, i32, [3 x i8] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"%s: supervisor %d: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: head-%d: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@gv100_disp = internal constant %struct.nv50_disp_func { ptr @gv100_disp_init, ptr @gv100_disp_fini, ptr @gv100_disp_intr, ptr null, ptr @gv100_disp_chan_uevent, ptr @gv100_disp_super, ptr @gv100_disp_root_oclass, %struct.anon.132 { ptr @gv100_disp_wndw_cnt, ptr null }, %struct.anon.132 { ptr @gv100_head_cnt, ptr @gv100_head_new }, %struct.anon.132 zeroinitializer, %struct.anon.132 { ptr @gv100_sor_cnt, ptr @gv100_sor_new }, %struct.anon.132 zeroinitializer, i16 8192 }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: head %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: wndw %08x\0A\00", align 1
@nv50_disp_intr_error_type = external dso_local constant [0 x %struct.nvkm_enum], align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s: wimm %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: exception %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s: error %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%s: ctrl %08x\0A\00", align 1
@gv100_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@gv100_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@switch.table.gv100_disp_init = private unnamed_addr constant [3 x i32] [i32 1, i32 3, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_wndw_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357092
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  store i32 %8, ptr %1, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 6357108
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %12 = lshr i32 %11, 20
  %13 = and i32 %12, 63
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_disp_super(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr i8, ptr %0, i32 -204
  %4 = getelementptr i8, ptr %0, i32 -200
  %5 = getelementptr i8, ptr %0, i32 -188
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 6358952
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  %11 = getelementptr i8, ptr %0, i32 -160
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -176
  %19 = getelementptr i8, ptr %0, i32 16
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true), !range !11
  %22 = add nuw nsw i32 %21, 1
  %23 = icmp eq i32 %20, 0
  %24 = select i1 %23, i32 0, i32 %22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %24, i32 noundef %10) #7
  br label %25

25:                                               ; preds = %14, %1
  %26 = getelementptr i8, ptr %0, i32 -108
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %54, label %29

29:                                               ; preds = %51, %25
  %30 = phi ptr [ %52, %51 ], [ %27, %25 ]
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %30, i32 -4
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 2
  %35 = add i32 %34, 6358956
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %38 = load i32, ptr %32, align 4
  %39 = getelementptr [4 x i32], ptr %2, i32 0, i32 %38
  store i32 %37, ptr %39, align 4
  %40 = getelementptr i8, ptr %30, i32 -8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.1, ptr noundef %50, i32 noundef %38, i32 noundef %37) #7
  br label %51

51:                                               ; preds = %45, %29
  %52 = load ptr, ptr %30, align 4
  %53 = icmp eq ptr %52, %26
  br i1 %53, label %54, label %29

54:                                               ; preds = %51, %25
  %55 = getelementptr i8, ptr %0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %0, i32 108
  %61 = load ptr, ptr %60, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %61, i32 noundef 4) #6
  tail call void @nv50_disp_super_1(ptr noundef %3) #6
  %62 = load ptr, ptr %26, align 4
  %63 = icmp eq ptr %62, %26
  br i1 %63, label %147, label %64

64:                                               ; preds = %74, %59
  %65 = phi ptr [ %75, %74 ], [ %62, %59 ]
  %66 = getelementptr i8, ptr %65, i32 -4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr [4 x i32], ptr %2, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 4096
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %65, i32 -12
  tail call void @nv50_disp_super_1_0(ptr noundef %3, ptr noundef %73) #6
  br label %74

74:                                               ; preds = %72, %64
  %75 = load ptr, ptr %65, align 4
  %76 = icmp eq ptr %75, %26
  br i1 %76, label %147, label %64

77:                                               ; preds = %54
  %78 = and i32 %56, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %128, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %26, align 4
  %82 = icmp eq ptr %81, %26
  br i1 %82, label %96, label %83

83:                                               ; preds = %93, %80
  %84 = phi ptr [ %94, %93 ], [ %81, %80 ]
  %85 = getelementptr i8, ptr %84, i32 -4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr [4 x i32], ptr %2, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 4096
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %83
  %92 = getelementptr i8, ptr %84, i32 -12
  tail call void @nv50_disp_super_2_0(ptr noundef %3, ptr noundef %92) #6
  br label %93

93:                                               ; preds = %91, %83
  %94 = load ptr, ptr %84, align 4
  %95 = icmp eq ptr %94, %26
  br i1 %95, label %96, label %83

96:                                               ; preds = %93, %80
  tail call void @nvkm_outp_route(ptr noundef %4) #6
  %97 = load ptr, ptr %26, align 4
  %98 = icmp eq ptr %97, %26
  br i1 %98, label %147, label %102

99:                                               ; preds = %112
  %100 = load ptr, ptr %26, align 4
  %101 = icmp eq ptr %100, %26
  br i1 %101, label %147, label %115

102:                                              ; preds = %112, %96
  %103 = phi ptr [ %113, %112 ], [ %97, %96 ]
  %104 = getelementptr i8, ptr %103, i32 -4
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr [4 x i32], ptr %2, i32 0, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 65536
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %102
  %111 = getelementptr i8, ptr %103, i32 -12
  tail call void @nv50_disp_super_2_1(ptr noundef %3, ptr noundef %111) #6
  br label %112

112:                                              ; preds = %110, %102
  %113 = load ptr, ptr %103, align 4
  %114 = icmp eq ptr %113, %26
  br i1 %114, label %99, label %102

115:                                              ; preds = %125, %99
  %116 = phi ptr [ %126, %125 ], [ %100, %99 ]
  %117 = getelementptr i8, ptr %116, i32 -4
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr [4 x i32], ptr %2, i32 0, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 4096
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = getelementptr i8, ptr %116, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %3, ptr noundef %124) #6
  br label %125

125:                                              ; preds = %123, %115
  %126 = load ptr, ptr %116, align 4
  %127 = icmp eq ptr %126, %26
  br i1 %127, label %147, label %115

128:                                              ; preds = %77
  %129 = and i32 %56, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %26, align 4
  %133 = icmp eq ptr %132, %26
  br i1 %133, label %147, label %134

134:                                              ; preds = %144, %131
  %135 = phi ptr [ %145, %144 ], [ %132, %131 ]
  %136 = getelementptr i8, ptr %135, i32 -4
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr [4 x i32], ptr %2, i32 0, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 4096
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %134
  %143 = getelementptr i8, ptr %135, i32 -12
  tail call void @nv50_disp_super_3_0(ptr noundef %3, ptr noundef %143) #6
  br label %144

144:                                              ; preds = %142, %134
  %145 = load ptr, ptr %135, align 4
  %146 = icmp eq ptr %145, %26
  br i1 %146, label %147, label %134

147:                                              ; preds = %144, %131, %128, %125, %99, %96, %74, %59
  %148 = load ptr, ptr %26, align 4
  %149 = icmp eq ptr %148, %26
  br i1 %149, label %160, label %150

150:                                              ; preds = %150, %147
  %151 = phi ptr [ %158, %150 ], [ %148, %147 ]
  %152 = load ptr, ptr %7, align 4
  %153 = getelementptr i8, ptr %151, i32 -4
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 %154, 2
  %156 = add i32 %155, 6358956
  %157 = getelementptr i8, ptr %152, i32 %156
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 0) #6, !srcloc !13
  %158 = load ptr, ptr %151, align 4
  %159 = icmp eq ptr %158, %26
  br i1 %159, label %160, label %150

160:                                              ; preds = %150, %147
  %161 = load ptr, ptr %7, align 4
  %162 = getelementptr i8, ptr %161, i32 6358952
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 -2147483648) #6, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_mthd(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1_0(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_0(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_route(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_1(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_2(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_3_0(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_disp_intr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 6364864
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  %13 = and i32 %12, 255
  store i32 %13, ptr %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %1
  %16 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 8, i32 noundef 0) #6
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %21 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  br label %22

22:                                               ; preds = %59, %18
  %23 = phi i32 [ %16, %18 ], [ %64, %59 ]
  %24 = phi i32 [ %12, %18 ], [ %62, %59 ]
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %23, 2
  %29 = add i32 %28, 6363136
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr i8, ptr %35, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #6, !srcloc !13
  %37 = and i32 %31, -4
  br label %38

38:                                               ; preds = %34, %22
  %39 = phi i32 [ %37, %34 ], [ %31, %22 ]
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  call void @nvkm_disp_vblank(ptr noundef %19, i32 noundef %23) #6
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr i8, ptr %43, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 4) #6, !srcloc !13
  %45 = and i32 %39, -5
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %45, %42 ], [ %39, %38 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %20, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef %21, i32 noundef %47) #7
  br label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr %26, align 4
  %58 = getelementptr i8, ptr %57, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %47) #6, !srcloc !13
  br label %59

59:                                               ; preds = %56, %46
  %60 = shl nuw nsw i32 1, %23
  %61 = xor i32 %60, -1
  %62 = and i32 %24, %61
  %63 = add nsw i32 %23, 1
  %64 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 8, i32 noundef %63) #6
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %22, label %66

66:                                               ; preds = %59, %15, %1
  %67 = phi i32 [ %12, %1 ], [ %12, %15 ], [ %62, %59 ]
  %68 = and i32 %67, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 6363212
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  store i32 %75, ptr %5, align 4
  %76 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %77, i32 noundef 0) #6
  %79 = load i32, ptr %76, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %81, %70
  %82 = phi i32 [ %91, %81 ], [ %78, %70 ]
  %83 = shl nuw i32 1, %82
  %84 = load ptr, ptr %72, align 4
  %85 = getelementptr i8, ptr %84, i32 6363212
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #6, !srcloc !13
  %86 = add nsw i32 %82, 1
  call fastcc void @gv100_disp_exception(ptr noundef %0, i32 noundef %86) #6
  %87 = xor i32 %83, -1
  %88 = load i32, ptr %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, ptr %5, align 4
  %90 = load i32, ptr %76, align 4
  %91 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %90, i32 noundef %86) #6
  %92 = load i32, ptr %76, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %81, label %94

94:                                               ; preds = %81, %70
  %95 = load i32, ptr %5, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %99, 1
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %104, ptr noundef nonnull @.str.4, ptr noundef %105, i32 noundef %95) #7
  %106 = load i32, ptr %5, align 4
  br label %107

107:                                              ; preds = %101, %97
  %108 = phi i32 [ %106, %101 ], [ %95, %97 ]
  %109 = load ptr, ptr %72, align 4
  %110 = getelementptr i8, ptr %109, i32 6363212
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #6, !srcloc !13
  br label %111

111:                                              ; preds = %107, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %112 = and i32 %67, -513
  br label %113

113:                                              ; preds = %111, %66
  %114 = phi i32 [ %112, %111 ], [ %67, %66 ]
  %115 = and i32 %114, 1024
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %161, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 6363216
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  store i32 %122, ptr %4, align 4
  %123 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %124, i32 noundef 0) #6
  %126 = load i32, ptr %123, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %128, %117
  %129 = phi i32 [ %139, %128 ], [ %125, %117 ]
  %130 = shl nuw i32 1, %129
  %131 = load ptr, ptr %119, align 4
  %132 = getelementptr i8, ptr %131, i32 6363216
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #6, !srcloc !13
  %133 = add i32 %129, 33
  call fastcc void @gv100_disp_exception(ptr noundef %0, i32 noundef %133) #6
  %134 = xor i32 %130, -1
  %135 = load i32, ptr %4, align 4
  %136 = and i32 %135, %134
  store i32 %136, ptr %4, align 4
  %137 = load i32, ptr %123, align 4
  %138 = add nsw i32 %129, 1
  %139 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %137, i32 noundef %138) #6
  %140 = load i32, ptr %123, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %128, label %142

142:                                              ; preds = %128, %117
  %143 = load i32, ptr %4, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = icmp ugt i32 %147, 1
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load ptr, ptr %7, align 4
  %151 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %152, ptr noundef nonnull @.str.8, ptr noundef %153, i32 noundef %143) #7
  %154 = load i32, ptr %4, align 4
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi i32 [ %154, %149 ], [ %143, %145 ]
  %157 = load ptr, ptr %119, align 4
  %158 = getelementptr i8, ptr %157, i32 6363216
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #6, !srcloc !13
  br label %159

159:                                              ; preds = %155, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %160 = and i32 %114, -1025
  br label %161

161:                                              ; preds = %159, %113
  %162 = phi i32 [ %160, %159 ], [ %114, %113 ]
  %163 = and i32 %162, 2048
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %219, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr inbounds %struct.nvkm_device, ptr %166, i32 0, i32 11
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 6363220
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %165
  %174 = load ptr, ptr %167, align 4
  %175 = getelementptr i8, ptr %174, i32 6363220
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 1) #6, !srcloc !13
  call fastcc void @gv100_disp_exception(ptr noundef %0, i32 noundef 0) #6
  %176 = and i32 %170, -2
  br label %177

177:                                              ; preds = %173, %165
  %178 = phi i32 [ %176, %173 ], [ %170, %165 ]
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  store i32 %180, ptr %3, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %184, i32 noundef 0) #6
  %186 = load i32, ptr %183, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %188, %182
  %189 = phi i32 [ %199, %188 ], [ %185, %182 ]
  %190 = phi i32 [ %196, %188 ], [ %178, %182 ]
  %191 = shl i32 65536, %189
  %192 = load ptr, ptr %167, align 4
  %193 = getelementptr i8, ptr %192, i32 6363220
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #6, !srcloc !13
  %194 = add i32 %189, 73
  call fastcc void @gv100_disp_exception(ptr noundef %0, i32 noundef %194) #6
  %195 = xor i32 %191, -1
  %196 = and i32 %190, %195
  %197 = load i32, ptr %183, align 4
  %198 = add nsw i32 %189, 1
  %199 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %197, i32 noundef %198) #6
  %200 = load i32, ptr %183, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %188, label %202

202:                                              ; preds = %188, %182, %177
  %203 = phi i32 [ %178, %177 ], [ %178, %182 ], [ %196, %188 ]
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = icmp ugt i32 %207, 1
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load ptr, ptr %7, align 4
  %211 = getelementptr inbounds %struct.nvkm_device, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %212, ptr noundef nonnull @.str.9, ptr noundef %213, i32 noundef %203) #7
  br label %214

214:                                              ; preds = %209, %205
  %215 = load ptr, ptr %167, align 4
  %216 = getelementptr i8, ptr %215, i32 6363220
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %203) #6, !srcloc !13
  br label %217

217:                                              ; preds = %214, %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %218 = and i32 %162, -2049
  br label %219

219:                                              ; preds = %217, %161
  %220 = phi i32 [ %218, %217 ], [ %162, %161 ]
  %221 = and i32 %220, 4096
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %307, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %7, align 4
  %225 = getelementptr inbounds %struct.nvkm_device, ptr %224, i32 0, i32 11
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %226, i32 6364208
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %229 = and i32 %228, 7
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 4
  store i32 %229, ptr %232, align 4
  %233 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 3
  %236 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %234, ptr noundef %235) #6
  %237 = load i32, ptr %232, align 4
  %238 = load ptr, ptr %225, align 4
  %239 = getelementptr i8, ptr %238, i32 6363232
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %237) #6, !srcloc !13
  %240 = and i32 %228, -8
  br label %241

241:                                              ; preds = %231, %223
  %242 = phi i32 [ %240, %231 ], [ %228, %223 ]
  %243 = and i32 %242, -9
  %244 = and i32 %242, 128
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr %225, align 4
  %248 = getelementptr i8, ptr %247, i32 6363208
  %249 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %250 = load ptr, ptr %225, align 4
  %251 = getelementptr i8, ptr %250, i32 6363208
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %249) #6, !srcloc !13
  %252 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %253 = load i32, ptr %252, align 4
  %254 = icmp ugt i32 %253, 1
  br i1 %254, label %255, label %260

255:                                              ; preds = %246
  %256 = load ptr, ptr %7, align 4
  %257 = getelementptr inbounds %struct.nvkm_device, ptr %256, i32 0, i32 2
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %258, ptr noundef nonnull @.str.10, ptr noundef %259, i32 noundef %249) #7
  br label %260

260:                                              ; preds = %255, %246
  %261 = and i32 %242, -137
  br label %262

262:                                              ; preds = %260, %241
  %263 = phi i32 [ %261, %260 ], [ %243, %241 ]
  %264 = and i32 %263, 256
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %294, label %266

266:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %267 = load ptr, ptr %225, align 4
  %268 = getelementptr i8, ptr %267, i32 6363224
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  store i32 %269, ptr %2, align 4
  %270 = load ptr, ptr %225, align 4
  %271 = getelementptr i8, ptr %270, i32 6363228
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %273 = load ptr, ptr %225, align 4
  %274 = getelementptr i8, ptr %273, i32 6363224
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %269) #6, !srcloc !13
  %275 = load ptr, ptr %225, align 4
  %276 = getelementptr i8, ptr %275, i32 6363228
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %272) #6, !srcloc !13
  %277 = and i32 %272, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %266
  call void @nv50_disp_chan_uevent_send(ptr noundef %0, i32 noundef 0) #6
  br label %280

280:                                              ; preds = %279, %266
  %281 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %282, i32 noundef 0) #6
  %284 = load i32, ptr %281, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %286, %280
  %287 = phi i32 [ %290, %286 ], [ %283, %280 ]
  %288 = add nsw i32 %287, 1
  call void @nv50_disp_chan_uevent_send(ptr noundef %0, i32 noundef %288) #6
  %289 = load i32, ptr %281, align 4
  %290 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %289, i32 noundef %288) #6
  %291 = load i32, ptr %281, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %286, label %293

293:                                              ; preds = %286, %280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %294

294:                                              ; preds = %293, %262
  %295 = icmp eq i32 %263, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %294
  %297 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %298 = load i32, ptr %297, align 4
  %299 = icmp ugt i32 %298, 1
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load ptr, ptr %7, align 4
  %302 = getelementptr inbounds %struct.nvkm_device, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8
  %304 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %303, ptr noundef nonnull @.str.11, ptr noundef %304, i32 noundef %263) #7
  br label %305

305:                                              ; preds = %300, %296, %294
  %306 = and i32 %220, -4097
  br label %307

307:                                              ; preds = %305, %219
  %308 = phi i32 [ %306, %305 ], [ %220, %219 ]
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %312 = load i32, ptr %311, align 4
  %313 = icmp ugt i32 %312, 1
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load ptr, ptr %7, align 4
  %316 = getelementptr inbounds %struct.nvkm_device, ptr %315, i32 0, i32 2
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %317, ptr noundef nonnull @.str.2, ptr noundef %318, i32 noundef %308) #7
  br label %319

319:                                              ; preds = %314, %310, %307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_disp_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6364592
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_disp_new_(ptr noundef nonnull @gv100_disp, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gv100_disp_exception(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = mul i32 %1, 12
  %8 = add i32 %7, 6361120
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = lshr i32 %10, 12
  %12 = and i32 %11, 7
  %13 = shl i32 %10, 2
  %14 = and i32 %13, 16380
  %15 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %12) #6
  %16 = icmp slt i32 %1, 33
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 4
  %19 = add i32 %7, 6361124
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = load ptr, ptr %5, align 4
  %23 = add i32 %7, 6361128
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %26 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %17
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %34 = icmp eq ptr %15, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nvkm_enum, ptr %15, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi ptr [ %37, %35 ], [ @.str.6, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %1, i32 noundef %10, i32 noundef %12, ptr noundef %39, i32 noundef %14, i32 noundef %21, i32 noundef %25) #7
  br label %55

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %49 = icmp eq ptr %15, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.nvkm_enum, ptr %15, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi ptr [ %52, %50 ], [ @.str.6, %44 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef %48, i32 noundef %1, i32 noundef %10, i32 noundef %12, ptr noundef %54, i32 noundef %14) #7
  br label %55

55:                                               ; preds = %53, %40, %38, %17
  %56 = icmp ult i32 %1, 81
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = getelementptr %struct.nv50_disp, ptr %0, i32 0, i32 13, i32 %1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ne ptr %59, null
  %61 = icmp eq i32 %14, 512
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void @nv50_disp_chan_mthd(ptr noundef nonnull %59, i32 noundef 1) #6
  br label %64

64:                                               ; preds = %63, %57, %55
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 -1879048192) #6, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gv100_disp_init(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6444264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 6444264
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %15 = and i32 %14, -2
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 6444264
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %18

18:                                               ; preds = %24, %11
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 6444264
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %18, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = call ptr @dev_driver_string(ptr noundef %32) #6
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_timer, ptr %34, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load ptr, ptr %38, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi ptr [ %43, %42 ], [ %40, %27 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 341, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %33, ptr noundef %45) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %293

46:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %47

47:                                               ; preds = %46, %1
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 6357096
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr i8, ptr %51, i32 6553608
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #6, !srcloc !13
  %53 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 9, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %56, %47
  %57 = phi i32 [ %74, %56 ], [ 0, %47 ]
  %58 = load ptr, ptr %5, align 4
  %59 = shl i32 %57, 11
  %60 = add i32 %59, 6406144
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %63, i32 6553600
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %66 = shl i32 256, %57
  %67 = or i32 %65, %66
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr i8, ptr %68, i32 6553600
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #6, !srcloc !13
  %70 = load ptr, ptr %5, align 4
  %71 = shl i32 %57, 3
  %72 = add i32 %71, 6553924
  %73 = getelementptr i8, ptr %70, i32 %72
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %62) #6, !srcloc !13
  %74 = add nuw nsw i32 %57, 1
  %75 = load i32, ptr %53, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %56, label %77

77:                                               ; preds = %56, %47
  %78 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %81, label %85

81:                                               ; preds = %85, %77
  %82 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %180, label %142

85:                                               ; preds = %85, %77
  %86 = phi ptr [ %140, %85 ], [ %79, %77 ]
  %87 = getelementptr i8, ptr %86, i32 -4
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %5, align 4
  %90 = shl i32 %88, 11
  %91 = add i32 %90, 6382336
  %92 = getelementptr i8, ptr %89, i32 %91
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %94 = load ptr, ptr %5, align 4
  %95 = shl i32 %88, 5
  %96 = add i32 %95, 6553672
  %97 = getelementptr i8, ptr %94, i32 %96
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %93) #6, !srcloc !13
  %98 = add i32 %90, 6381824
  %99 = add i32 %95, 6553648
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 %98
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i8, ptr %103, i32 %99
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #6, !srcloc !13
  %105 = load ptr, ptr %5, align 4
  %106 = add i32 %90, 6381828
  %107 = getelementptr i8, ptr %105, i32 %106
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %109 = load ptr, ptr %5, align 4
  %110 = add i32 %95, 6553652
  %111 = getelementptr i8, ptr %109, i32 %110
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %108) #6, !srcloc !13
  %112 = load ptr, ptr %5, align 4
  %113 = add i32 %90, 6381832
  %114 = getelementptr i8, ptr %112, i32 %113
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %116 = load ptr, ptr %5, align 4
  %117 = add i32 %95, 6553656
  %118 = getelementptr i8, ptr %116, i32 %117
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %115) #6, !srcloc !13
  %119 = load ptr, ptr %5, align 4
  %120 = add i32 %90, 6381836
  %121 = getelementptr i8, ptr %119, i32 %120
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %123 = load ptr, ptr %5, align 4
  %124 = add i32 %95, 6553660
  %125 = getelementptr i8, ptr %123, i32 %124
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %122) #6, !srcloc !13
  %126 = load ptr, ptr %5, align 4
  %127 = add i32 %90, 6381840
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %130 = load ptr, ptr %5, align 4
  %131 = add i32 %95, 6553664
  %132 = getelementptr i8, ptr %130, i32 %131
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %129) #6, !srcloc !13
  %133 = load ptr, ptr %5, align 4
  %134 = add i32 %90, 6381844
  %135 = getelementptr i8, ptr %133, i32 %134
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %137 = load ptr, ptr %5, align 4
  %138 = add i32 %95, 6553668
  %139 = getelementptr i8, ptr %137, i32 %138
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #6, !srcloc !13
  %140 = load ptr, ptr %86, align 4
  %141 = icmp eq ptr %140, %78
  br i1 %141, label %81, label %85

142:                                              ; preds = %180, %81
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr i8, ptr %143, i32 6479872
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr i8, ptr %146, i32 6553616
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #6, !srcloc !13
  %148 = load ptr, ptr %5, align 4
  %149 = getelementptr i8, ptr %148, i32 6479876
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %151 = load ptr, ptr %5, align 4
  %152 = getelementptr i8, ptr %151, i32 6553620
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #6, !srcloc !13
  %153 = load ptr, ptr %5, align 4
  %154 = getelementptr i8, ptr %153, i32 6479880
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %156 = load ptr, ptr %5, align 4
  %157 = getelementptr i8, ptr %156, i32 6553624
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #6, !srcloc !13
  %158 = load ptr, ptr %5, align 4
  %159 = getelementptr i8, ptr %158, i32 6479884
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %161 = load ptr, ptr %5, align 4
  %162 = getelementptr i8, ptr %161, i32 6553628
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #6, !srcloc !13
  %163 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 6
  %164 = load ptr, ptr %5, align 4
  %165 = getelementptr i8, ptr %164, i32 6357112
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %167 = or i32 %166, 1
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr i8, ptr %168, i32 6357112
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #6, !srcloc !13
  %170 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 11
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nvkm_memory_func, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = call i32 %176(ptr noundef %173) #6
  %178 = add i32 %177, -1
  %179 = icmp ult i32 %178, 3
  br i1 %179, label %236, label %239

180:                                              ; preds = %180, %81
  %181 = phi i32 [ %233, %180 ], [ 0, %81 ]
  %182 = load ptr, ptr %5, align 4
  %183 = getelementptr i8, ptr %182, i32 6553604
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %185 = shl nuw i32 1, %181
  %186 = or i32 %184, %185
  %187 = load ptr, ptr %5, align 4
  %188 = getelementptr i8, ptr %187, i32 6553604
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #6, !srcloc !13
  %189 = shl i32 %181, 11
  %190 = add i32 %189, 6488144
  %191 = shl i32 %181, 5
  %192 = add i32 %191, 6554084
  %193 = load ptr, ptr %5, align 4
  %194 = getelementptr i8, ptr %193, i32 %190
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %196 = load ptr, ptr %5, align 4
  %197 = getelementptr i8, ptr %196, i32 %192
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #6, !srcloc !13
  %198 = load ptr, ptr %5, align 4
  %199 = add i32 %189, 6488148
  %200 = getelementptr i8, ptr %198, i32 %199
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %202 = load ptr, ptr %5, align 4
  %203 = add i32 %191, 6554088
  %204 = getelementptr i8, ptr %202, i32 %203
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %201) #6, !srcloc !13
  %205 = load ptr, ptr %5, align 4
  %206 = add i32 %189, 6488152
  %207 = getelementptr i8, ptr %205, i32 %206
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %209 = load ptr, ptr %5, align 4
  %210 = add i32 %191, 6554092
  %211 = getelementptr i8, ptr %209, i32 %210
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %208) #6, !srcloc !13
  %212 = load ptr, ptr %5, align 4
  %213 = add i32 %189, 6488156
  %214 = getelementptr i8, ptr %212, i32 %213
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %216 = load ptr, ptr %5, align 4
  %217 = add i32 %191, 6554096
  %218 = getelementptr i8, ptr %216, i32 %217
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %215) #6, !srcloc !13
  %219 = load ptr, ptr %5, align 4
  %220 = add i32 %189, 6488160
  %221 = getelementptr i8, ptr %219, i32 %220
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %223 = load ptr, ptr %5, align 4
  %224 = add i32 %191, 6554100
  %225 = getelementptr i8, ptr %223, i32 %224
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %222) #6, !srcloc !13
  %226 = load ptr, ptr %5, align 4
  %227 = add i32 %189, 6488164
  %228 = getelementptr i8, ptr %226, i32 %227
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %230 = load ptr, ptr %5, align 4
  %231 = add i32 %191, 6554104
  %232 = getelementptr i8, ptr %230, i32 %231
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %229) #6, !srcloc !13
  %233 = add nuw nsw i32 %181, 1
  %234 = load i32, ptr %82, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %180, label %142

236:                                              ; preds = %142
  %237 = getelementptr inbounds [3 x i32], ptr @switch.table.gv100_disp_init, i32 0, i32 %178
  %238 = load i32, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %142
  %240 = phi i32 [ %160, %142 ], [ %238, %236 ]
  %241 = or i32 %240, 8
  %242 = load ptr, ptr %5, align 4
  %243 = getelementptr i8, ptr %242, i32 6357008
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #6, !srcloc !13
  %244 = load ptr, ptr %170, align 4
  %245 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %244, i32 0, i32 4
  %246 = load i64, ptr %245, align 8
  %247 = lshr i64 %246, 16
  %248 = trunc i64 %247 to i32
  %249 = load ptr, ptr %5, align 4
  %250 = getelementptr i8, ptr %249, i32 6357012
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #6, !srcloc !13
  %251 = load ptr, ptr %5, align 4
  %252 = getelementptr i8, ptr %251, i32 6364400
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 391) #6, !srcloc !13
  %253 = load ptr, ptr %5, align 4
  %254 = getelementptr i8, ptr %253, i32 6364592
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 391) #6, !srcloc !13
  %255 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 7
  %256 = load i32, ptr %255, align 4
  %257 = shl i32 %256, 16
  %258 = or i32 %257, 1
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr i8, ptr %259, i32 6364396
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %258) #6, !srcloc !13
  %261 = load ptr, ptr %5, align 4
  %262 = getelementptr i8, ptr %261, i32 6364588
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 0) #6, !srcloc !13
  %263 = load i32, ptr %163, align 4
  %264 = load ptr, ptr %5, align 4
  %265 = getelementptr i8, ptr %264, i32 6364392
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %263) #6, !srcloc !13
  %266 = load ptr, ptr %5, align 4
  %267 = getelementptr i8, ptr %266, i32 6364584
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 0) #6, !srcloc !13
  %268 = load i32, ptr %163, align 4
  %269 = load ptr, ptr %5, align 4
  %270 = getelementptr i8, ptr %269, i32 6364388
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #6, !srcloc !13
  %271 = load ptr, ptr %5, align 4
  %272 = getelementptr i8, ptr %271, i32 6364580
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 0) #6, !srcloc !13
  %273 = load ptr, ptr %78, align 4
  %274 = icmp eq ptr %273, %78
  br i1 %274, label %288, label %275

275:                                              ; preds = %275, %239
  %276 = phi ptr [ %286, %275 ], [ %273, %239 ]
  %277 = getelementptr i8, ptr %276, i32 -4
  %278 = load i32, ptr %277, align 4
  %279 = shl i32 %278, 2
  %280 = load ptr, ptr %5, align 4
  %281 = add i32 %279, 6364352
  %282 = getelementptr i8, ptr %280, i32 %281
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 4) #6, !srcloc !13
  %283 = load ptr, ptr %5, align 4
  %284 = add i32 %279, 6364544
  %285 = getelementptr i8, ptr %283, i32 %284
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 0) #6, !srcloc !13
  %286 = load ptr, ptr %276, align 4
  %287 = icmp eq ptr %286, %78
  br i1 %287, label %288, label %275

288:                                              ; preds = %275, %239
  %289 = load ptr, ptr %5, align 4
  %290 = getelementptr i8, ptr %289, i32 6364404
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 0) #6, !srcloc !13
  %291 = load ptr, ptr %5, align 4
  %292 = getelementptr i8, ptr %291, i32 6364596
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 0) #6, !srcloc !13
  br label %293

293:                                              ; preds = %288, %44
  %294 = phi i32 [ -16, %44 ], [ 0, %288 ]
  ret i32 %294
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_cnt(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_new(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_cnt(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_new(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 3956157}
!9 = !{i64 2151495610}
!10 = !{!"auto-init"}
!11 = !{i32 0, i32 33}
!12 = !{i64 2151496832}
!13 = !{i64 3955739}
