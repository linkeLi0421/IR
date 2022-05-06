; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.126, %struct.anon.126, %struct.anon.126, %struct.anon.126, %struct.anon.126, i16 }
%struct.anon.126 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.127, %struct.anon.127, %struct.anon.127, %struct.anon.128, %struct.anon.129, ptr, ptr, [81 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.127 = type { i32, i32 }
%struct.anon.128 = type { i32, i32, i32 }
%struct.anon.129 = type { i32, i32, [3 x i8] }
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

@.str = private unnamed_addr constant [19 x i8] c"%s: supervisor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: head-%d: %08x\0A\00", align 1
@nv50_disp_intr_error_type = external dso_local constant [0 x %struct.nvkm_enum], align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: intr24 %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/gf119.c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gf119_disp = internal constant %struct.nv50_disp_func { ptr @gf119_disp_init, ptr @gf119_disp_fini, ptr @gf119_disp_intr, ptr @gf119_disp_intr_error, ptr @gf119_disp_chan_uevent, ptr @gf119_disp_super, ptr @gf119_disp_root_oclass, %struct.anon.126 zeroinitializer, %struct.anon.126 { ptr @gf119_head_cnt, ptr @gf119_head_new }, %struct.anon.126 { ptr @gf119_dac_cnt, ptr @gf119_dac_new }, %struct.anon.126 { ptr @gf119_sor_cnt, ptr @gf119_sor_new }, %struct.anon.126 zeroinitializer, i16 0 }, align 4
@gf119_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@gf119_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_disp_super(ptr noundef %0) #0 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr i8, ptr %0, i32 -204
  %4 = getelementptr i8, ptr %0, i32 -200
  %5 = getelementptr i8, ptr %0, i32 -188
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -160
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %0, i32 -176
  %14 = getelementptr i8, ptr %0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !9
  %17 = add nuw nsw i32 %16, 1
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %18, i32 0, i32 %17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %19) #7
  br label %20

20:                                               ; preds = %10, %1
  %21 = getelementptr i8, ptr %0, i32 -108
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %26

26:                                               ; preds = %48, %24
  %27 = phi ptr [ %22, %24 ], [ %49, %48 ]
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr i8, ptr %27, i32 -4
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 11
  %32 = add i32 %31, 6357460
  %33 = getelementptr i8, ptr %28, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %35 = load i32, ptr %29, align 4
  %36 = getelementptr [4 x i32], ptr %2, i32 0, i32 %35
  store i32 %34, ptr %36, align 4
  %37 = getelementptr i8, ptr %27, i32 -8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_disp, ptr %38, i32 0, i32 1, i32 1, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.nvkm_disp, ptr %38, i32 0, i32 1, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_disp, ptr %38, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.1, ptr noundef %47, i32 noundef %35, i32 noundef %34) #7
  br label %48

48:                                               ; preds = %42, %26
  %49 = load ptr, ptr %27, align 4
  %50 = icmp eq ptr %49, %21
  br i1 %50, label %51, label %26

51:                                               ; preds = %48, %20
  %52 = getelementptr i8, ptr %0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %0, i32 108
  %58 = load ptr, ptr %57, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %58, i32 noundef 4) #6
  tail call void @nv50_disp_super_1(ptr noundef %3) #6
  %59 = load ptr, ptr %21, align 4
  %60 = icmp eq ptr %59, %21
  br i1 %60, label %144, label %61

61:                                               ; preds = %71, %56
  %62 = phi ptr [ %72, %71 ], [ %59, %56 ]
  %63 = getelementptr i8, ptr %62, i32 -4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr [4 x i32], ptr %2, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 4096
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = getelementptr i8, ptr %62, i32 -12
  tail call void @nv50_disp_super_1_0(ptr noundef %3, ptr noundef %70) #6
  br label %71

71:                                               ; preds = %69, %61
  %72 = load ptr, ptr %62, align 4
  %73 = icmp eq ptr %72, %21
  br i1 %73, label %144, label %61

74:                                               ; preds = %51
  %75 = and i32 %53, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %21, align 4
  %79 = icmp eq ptr %78, %21
  br i1 %79, label %93, label %80

80:                                               ; preds = %90, %77
  %81 = phi ptr [ %91, %90 ], [ %78, %77 ]
  %82 = getelementptr i8, ptr %81, i32 -4
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr [4 x i32], ptr %2, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 4096
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = getelementptr i8, ptr %81, i32 -12
  tail call void @nv50_disp_super_2_0(ptr noundef %3, ptr noundef %89) #6
  br label %90

90:                                               ; preds = %88, %80
  %91 = load ptr, ptr %81, align 4
  %92 = icmp eq ptr %91, %21
  br i1 %92, label %93, label %80

93:                                               ; preds = %90, %77
  tail call void @nvkm_outp_route(ptr noundef %4) #6
  %94 = load ptr, ptr %21, align 4
  %95 = icmp eq ptr %94, %21
  br i1 %95, label %144, label %99

96:                                               ; preds = %109
  %97 = load ptr, ptr %21, align 4
  %98 = icmp eq ptr %97, %21
  br i1 %98, label %144, label %112

99:                                               ; preds = %109, %93
  %100 = phi ptr [ %110, %109 ], [ %94, %93 ]
  %101 = getelementptr i8, ptr %100, i32 -4
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr [4 x i32], ptr %2, i32 0, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 65536
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = getelementptr i8, ptr %100, i32 -12
  tail call void @nv50_disp_super_2_1(ptr noundef %3, ptr noundef %108) #6
  br label %109

109:                                              ; preds = %107, %99
  %110 = load ptr, ptr %100, align 4
  %111 = icmp eq ptr %110, %21
  br i1 %111, label %96, label %99

112:                                              ; preds = %122, %96
  %113 = phi ptr [ %123, %122 ], [ %97, %96 ]
  %114 = getelementptr i8, ptr %113, i32 -4
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr [4 x i32], ptr %2, i32 0, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 4096
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = getelementptr i8, ptr %113, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %3, ptr noundef %121) #6
  br label %122

122:                                              ; preds = %120, %112
  %123 = load ptr, ptr %113, align 4
  %124 = icmp eq ptr %123, %21
  br i1 %124, label %144, label %112

125:                                              ; preds = %74
  %126 = and i32 %53, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %21, align 4
  %130 = icmp eq ptr %129, %21
  br i1 %130, label %144, label %131

131:                                              ; preds = %141, %128
  %132 = phi ptr [ %142, %141 ], [ %129, %128 ]
  %133 = getelementptr i8, ptr %132, i32 -4
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr [4 x i32], ptr %2, i32 0, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 4096
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %131
  %140 = getelementptr i8, ptr %132, i32 -12
  tail call void @nv50_disp_super_3_0(ptr noundef %3, ptr noundef %140) #6
  br label %141

141:                                              ; preds = %139, %131
  %142 = load ptr, ptr %132, align 4
  %143 = icmp eq ptr %142, %21
  br i1 %143, label %144, label %131

144:                                              ; preds = %141, %128, %125, %122, %96, %93, %71, %56
  %145 = load ptr, ptr %21, align 4
  %146 = icmp eq ptr %145, %21
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi ptr [ %145, %147 ], [ %157, %149 ]
  %151 = load ptr, ptr %148, align 4
  %152 = getelementptr i8, ptr %150, i32 -4
  %153 = load i32, ptr %152, align 4
  %154 = shl i32 %153, 11
  %155 = add i32 %154, 6357460
  %156 = getelementptr i8, ptr %151, i32 %155
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 0) #6, !srcloc !13
  %157 = load ptr, ptr %150, align 4
  %158 = icmp eq ptr %157, %21
  br i1 %158, label %159, label %149

159:                                              ; preds = %149, %144
  %160 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 6357456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 -2147483648) #6, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
define dso_local void @gf119_disp_intr_error(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = mul i32 %1, 12
  %8 = add i32 %7, 6357488
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %11 = lshr i32 %10, 12
  %12 = and i32 %11, 7
  %13 = and i32 %10, 4092
  %14 = load ptr, ptr %5, align 4
  %15 = add i32 %7, 6357492
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %18 = load ptr, ptr %5, align 4
  %19 = add i32 %7, 6357496
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %22 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %12) #6
  %23 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %2
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %31 = icmp eq ptr %22, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nvkm_enum, ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi ptr [ %34, %32 ], [ @.str.3, %26 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef %30, i32 noundef %1, i32 noundef %10, i32 noundef %12, ptr noundef %36, i32 noundef %13, i32 noundef %17, i32 noundef %21) #7
  br label %37

37:                                               ; preds = %35, %2
  %38 = icmp ult i32 %1, 81
  %39 = icmp eq i32 %13, 128
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr %struct.nv50_disp, ptr %0, i32 0, i32 13, i32 %1
  %43 = load ptr, ptr %42, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %43, i32 noundef 1) #6
  br label %44

44:                                               ; preds = %41, %37
  %45 = shl nuw i32 1, %1
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %46, i32 6357148
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !13
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i8, ptr %48, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 -1879048192) #6, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_disp_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 6357132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %21, %16 ], [ %14, %11 ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #6, !range !9
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  tail call void @nv50_disp_chan_uevent_send(ptr noundef %0, i32 noundef %18) #6
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 6357132
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !13
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %11
  %26 = and i32 %8, -2
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ %8, %1 ]
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 6357148
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 true), !range !9
  %36 = icmp eq i32 %34, 0
  %37 = select i1 %36, i32 -1, i32 %35
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.nv50_disp_func, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0, i32 noundef %37) #6
  br label %43

43:                                               ; preds = %39, %31
  %44 = and i32 %28, -3
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i32 [ %44, %43 ], [ %28, %27 ]
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %82, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 6357164
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %53 = and i32 %52, 7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 4
  store i32 %53, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 3
  %60 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %58, ptr noundef %59) #6
  %61 = load i32, ptr %56, align 4
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 6357164
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #6, !srcloc !13
  %64 = and i32 %52, -8
  br label %65

65:                                               ; preds = %55, %49
  %66 = phi i32 [ %64, %55 ], [ %52, %49 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %75, ptr noundef nonnull @.str.4, ptr noundef %76, i32 noundef %66) #7
  br label %77

77:                                               ; preds = %72, %68
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 6357164
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %66) #6, !srcloc !13
  br label %80

80:                                               ; preds = %77, %65
  %81 = and i32 %46, -1048577
  br label %82

82:                                               ; preds = %80, %45
  %83 = phi i32 [ %81, %80 ], [ %46, %45 ]
  %84 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %117, label %87

87:                                               ; preds = %114, %82
  %88 = phi ptr [ %115, %114 ], [ %85, %82 ]
  %89 = getelementptr i8, ptr %88, i32 -4
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %90, 11
  %92 = shl i32 16777216, %90
  %93 = and i32 %92, %83
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %87
  %96 = load ptr, ptr %5, align 4
  %97 = add i32 %91, 6357180
  %98 = getelementptr i8, ptr %96, i32 %97
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i32, ptr %89, align 4
  tail call void @nvkm_disp_vblank(ptr noundef %2, i32 noundef %103) #6
  br label %104

104:                                              ; preds = %102, %95
  %105 = load ptr, ptr %5, align 4
  %106 = getelementptr i8, ptr %105, i32 %97
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr i8, ptr %108, i32 %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #6, !srcloc !13
  %110 = load ptr, ptr %5, align 4
  %111 = add i32 %91, 6357184
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  br label %114

114:                                              ; preds = %104, %87
  %115 = load ptr, ptr %88, align 4
  %116 = icmp eq ptr %115, %84
  br i1 %116, label %117, label %87

117:                                              ; preds = %114, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf119_disp_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6357168
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_init(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %16

10:                                               ; preds = %16, %1
  %11 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %50

16:                                               ; preds = %16, %8
  %17 = phi ptr [ %6, %8 ], [ %42, %16 ]
  %18 = getelementptr i8, ptr %17, i32 -4
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 11
  %21 = load ptr, ptr %9, align 4
  %22 = add i32 %20, 6381828
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %25 = load ptr, ptr %9, align 4
  %26 = add i32 %20, 6357428
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #6, !srcloc !13
  %28 = load ptr, ptr %9, align 4
  %29 = add i32 %20, 6381832
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %32 = load ptr, ptr %9, align 4
  %33 = add i32 %20, 6357432
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #6, !srcloc !13
  %35 = load ptr, ptr %9, align 4
  %36 = add i32 %20, 6381836
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %39 = load ptr, ptr %9, align 4
  %40 = add i32 %20, 6357436
  %41 = getelementptr i8, ptr %39, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #6, !srcloc !13
  %42 = load ptr, ptr %17, align 4
  %43 = icmp eq ptr %42, %5
  br i1 %43, label %10, label %16

44:                                               ; preds = %50, %10
  %45 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 9, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %63

50:                                               ; preds = %50, %14
  %51 = phi i32 [ 0, %14 ], [ %60, %50 ]
  %52 = load ptr, ptr %15, align 4
  %53 = shl i32 %51, 11
  %54 = add i32 %53, 6397952
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %57 = load ptr, ptr %15, align 4
  %58 = add i32 %53, 6357440
  %59 = getelementptr i8, ptr %57, i32 %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #6, !srcloc !13
  %60 = add nuw nsw i32 %51, 1
  %61 = load i32, ptr %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %50, label %44

63:                                               ; preds = %63, %48
  %64 = phi i32 [ 0, %48 ], [ %73, %63 ]
  %65 = load ptr, ptr %49, align 4
  %66 = shl i32 %64, 11
  %67 = add i32 %66, 6406144
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %70 = load ptr, ptr %49, align 4
  %71 = add i32 %66, 6488516
  %72 = getelementptr i8, ptr %70, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #6, !srcloc !13
  %73 = add nuw nsw i32 %64, 1
  %74 = load i32, ptr %45, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %63, label %76

76:                                               ; preds = %63, %44
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 6357164
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %121, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %77, align 4
  %85 = getelementptr i8, ptr %84, i32 6357164
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 256) #6, !srcloc !13
  %86 = load ptr, ptr %77, align 4
  %87 = getelementptr i8, ptr %86, i32 6395112
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %89 = and i32 %88, -2
  %90 = load ptr, ptr %77, align 4
  %91 = getelementptr i8, ptr %90, i32 6395112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #6, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %92

92:                                               ; preds = %98, %83
  %93 = load ptr, ptr %77, align 4
  %94 = getelementptr i8, ptr %93, i32 6395112
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %92
  %99 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %100 = icmp sgt i64 %99, -1
  br i1 %100, label %92, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %2, align 8
  %103 = getelementptr inbounds %struct.nvkm_timer, ptr %102, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = call ptr @dev_driver_string(ptr noundef %106) #6
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds %struct.nvkm_timer, ptr %108, i32 0, i32 1, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load ptr, ptr %112, align 4
  br label %118

118:                                              ; preds = %116, %101
  %119 = phi ptr [ %117, %116 ], [ %114, %101 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %107, ptr noundef %119) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %154

120:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %121

121:                                              ; preds = %120, %76
  %122 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %123, i32 0, i32 4
  %125 = load i64, ptr %124, align 8
  %126 = lshr i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = or i32 %127, 9
  %129 = load ptr, ptr %77, align 4
  %130 = getelementptr i8, ptr %129, i32 6357008
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #6, !srcloc !13
  %131 = load ptr, ptr %77, align 4
  %132 = getelementptr i8, ptr %131, i32 6357136
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 0) #6, !srcloc !13
  %133 = load ptr, ptr %77, align 4
  %134 = getelementptr i8, ptr %133, i32 6357152
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 0) #6, !srcloc !13
  %135 = load ptr, ptr %77, align 4
  %136 = getelementptr i8, ptr %135, i32 6357168
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 775) #6, !srcloc !13
  %137 = load ptr, ptr %5, align 4
  %138 = icmp eq ptr %137, %5
  br i1 %138, label %154, label %139

139:                                              ; preds = %139, %121
  %140 = phi ptr [ %152, %139 ], [ %137, %121 ]
  %141 = getelementptr i8, ptr %140, i32 -4
  %142 = load i32, ptr %141, align 4
  %143 = shl i32 %142, 11
  %144 = add i32 %143, 6382344
  %145 = load ptr, ptr %77, align 4
  %146 = getelementptr i8, ptr %145, i32 %144
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %148 = and i32 %147, -274
  %149 = or i32 %148, 16
  %150 = load ptr, ptr %77, align 4
  %151 = getelementptr i8, ptr %150, i32 %144
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #6, !srcloc !13
  %152 = load ptr, ptr %140, align 4
  %153 = icmp eq ptr %152, %5
  br i1 %153, label %154, label %139

154:                                              ; preds = %139, %121, %118
  %155 = phi i32 [ -16, %118 ], [ 0, %121 ], [ 0, %139 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_disp_new_(ptr noundef nonnull @gf119_disp, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_head_cnt(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_head_new(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_dac_cnt(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_dac_new(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_cnt(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_new(ptr noundef, i32 noundef) #5

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
!10 = !{i64 3951859}
!11 = !{i64 2151491312}
!12 = !{i64 2151492534}
!13 = !{i64 3951441}
