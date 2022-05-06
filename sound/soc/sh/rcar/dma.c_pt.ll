; ModuleID = '/llk/IR/sound/soc/sh/rcar/dma.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_dma_ctrl = type { ptr, i32, i32, i32 }
%struct.rsnd_dma = type { %struct.rsnd_mod, ptr, ptr, i32, i32, %union.anon.89 }
%union.anon.89 = type { %struct.rsnd_dmaen }
%struct.rsnd_dmaen = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_addr = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"audmapp\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dma allocate failed\0A\00", align 1
@mem = internal global %struct.rsnd_mod zeroinitializer, align 4
@mem_ops = internal global %struct.rsnd_mod_ops { ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rsnd_dmapp_ops = internal global %struct.rsnd_mod_ops { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_dmapp_stop, ptr @rsnd_dmapp_start, ptr @rsnd_dmapp_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_dmapp_debug_info }, align 4
@rsnd_dmaen_ops = internal global %struct.rsnd_mod_ops { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_dmaen_start, ptr @rsnd_dmaen_stop, ptr null, ptr null, ptr null, ptr @rsnd_dmaen_pointer, ptr null, ptr @rsnd_dmaen_prepare, ptr @rsnd_dmaen_cleanup, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"rcar_sound,ssiu\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"audmac-pp\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gen2_id_table_ssiu = internal unnamed_addr constant [80 x i8] c"\00\01\02\039:;<\04\05\06\07=>?@\08\09\0A\0BABCD\0CEFGHIJK\0DLMNOPQR\0E\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\12\13\14\15STUV", align 1
@gen2_id_table_scu = internal unnamed_addr constant [10 x i8] c"-./0123456", align 1
@gen2_id_table_cmd = internal unnamed_addr constant [2 x i8] c"78", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown connection (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"audmac\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid format width %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"dmaengine_prep_slave_sg() fail\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"dmaengine_submit() fail\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"can't get dma channel\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"This driver doesn't support SSI%d-%d, so far\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"DVC is selected without SRC\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mem\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_dma_request_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %18, %4
  %8 = phi i32 [ %20, %18 ], [ 0, %4 ]
  %9 = phi ptr [ %21, %18 ], [ %5, %4 ]
  %10 = phi ptr [ %19, %18 ], [ null, %4 ]
  %11 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %8) #5
  %12 = tail call i32 @rsnd_mod_id_raw(ptr noundef %2) #5
  %13 = icmp ne i32 %11, %12
  %14 = icmp ne ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @of_dma_request_slave_channel(ptr noundef nonnull %9, ptr noundef %3) #5
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %10, %7 ], [ %17, %16 ]
  %20 = add i32 %11, 1
  %21 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %9) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7

23:                                               ; preds = %18, %4
  %24 = phi ptr [ null, %4 ], [ %19, %18 ]
  tail call void @of_node_put(ptr noundef %0) #5
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_request_slave_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_dma_attach(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [14 x ptr], align 4
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %232

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rsnd_dai, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_priv, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.rsnd_dai, ptr %9, i32 0, i32 1
  %17 = icmp eq ptr %16, %0
  %18 = zext i1 %17 to i32
  %19 = icmp eq ptr %13, null
  br i1 %19, label %237, label %20

20:                                               ; preds = %7
  %21 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #5
  %29 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = tail call ptr @of_get_child_by_name(ptr noundef %33, ptr noundef nonnull @.str.2) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %20
  %37 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %1
  %42 = select i1 %41, ptr %38, ptr %1
  br label %46

43:                                               ; preds = %20
  %44 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %40, %36 ], [ %45, %43 ]
  %48 = phi ptr [ %38, %36 ], [ %45, %43 ]
  %49 = phi ptr [ %42, %36 ], [ %1, %43 ]
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  br label %193

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %53, i8 0, i32 52, i1 false) #5
  %54 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 0
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ne ptr %55, null
  %57 = zext i1 %56 to i32
  %58 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ne ptr %59, null
  %61 = zext i1 %60 to i32
  %62 = load ptr, ptr %27, align 4
  %63 = icmp ne ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = load ptr, ptr %25, align 4
  %66 = icmp ne ptr %65, null
  %67 = zext i1 %66 to i32
  %68 = load ptr, ptr %23, align 4
  %69 = icmp ne ptr %68, null
  %70 = zext i1 %69 to i32
  %71 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp ne ptr %72, null
  %74 = zext i1 %73 to i32
  %75 = load ptr, ptr %21, align 4
  %76 = icmp ne ptr %75, null
  %77 = zext i1 %76 to i32
  %78 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp ne ptr %79, null
  %81 = zext i1 %80 to i32
  %82 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = icmp ne ptr %83, null
  %85 = zext i1 %84 to i32
  %86 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 9
  %87 = load ptr, ptr %86, align 4
  %88 = icmp ne ptr %87, null
  %89 = zext i1 %88 to i32
  %90 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 10
  %91 = load ptr, ptr %90, align 4
  %92 = icmp ne ptr %91, null
  %93 = zext i1 %92 to i32
  %94 = icmp ne ptr %47, null
  %95 = zext i1 %94 to i32
  %96 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp ne ptr %97, null
  %99 = zext i1 %98 to i32
  %100 = add nuw nsw i32 %57, %95
  %101 = add nuw nsw i32 %100, %61
  %102 = add nuw nsw i32 %101, %64
  %103 = add nuw nsw i32 %102, %67
  %104 = add nuw nsw i32 %103, %70
  %105 = add nuw nsw i32 %104, %74
  %106 = add nuw nsw i32 %105, %77
  %107 = add nuw nsw i32 %106, %81
  %108 = add nuw nsw i32 %107, %85
  %109 = add nuw nsw i32 %108, %89
  %110 = add nuw nsw i32 %109, %93
  %111 = add nuw nsw i32 %110, %99
  %112 = select i1 %17, ptr null, ptr %48
  %113 = select i1 %17, ptr %48, ptr null
  store ptr %112, ptr %4, align 4
  %114 = icmp ugt i32 %111, 1
  br i1 %114, label %115, label %172

115:                                              ; preds = %52
  %116 = icmp eq ptr %22, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %115
  %118 = icmp eq ptr %24, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %117
  %120 = icmp eq ptr %26, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %119
  %122 = icmp eq ptr %28, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %121, %119, %117, %115
  %124 = phi ptr [ %22, %115 ], [ %24, %117 ], [ %26, %119 ], [ %28, %121 ]
  %125 = phi ptr [ %24, %115 ], [ null, %117 ], [ null, %119 ], [ null, %121 ]
  %126 = phi ptr [ %26, %115 ], [ %26, %117 ], [ null, %119 ], [ null, %121 ]
  %127 = phi ptr [ %28, %115 ], [ %28, %117 ], [ %28, %119 ], [ null, %121 ]
  store ptr %124, ptr %53, align 4
  %128 = icmp ugt i32 %111, 2
  br i1 %128, label %131, label %172

129:                                              ; preds = %121
  %130 = icmp ugt i32 %111, 2
  br i1 %130, label %142, label %172

131:                                              ; preds = %123
  %132 = icmp eq ptr %125, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = icmp eq ptr %126, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %133
  %136 = icmp eq ptr %127, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %135, %133, %131
  %138 = phi ptr [ %125, %131 ], [ %126, %133 ], [ %127, %135 ]
  %139 = phi ptr [ %126, %131 ], [ null, %133 ], [ null, %135 ]
  %140 = phi ptr [ %127, %131 ], [ %127, %133 ], [ null, %135 ]
  %141 = getelementptr inbounds [14 x ptr], ptr %4, i32 0, i32 2
  store ptr %138, ptr %141, align 4
  br label %142

142:                                              ; preds = %137, %135, %129
  %143 = phi ptr [ null, %135 ], [ %139, %137 ], [ null, %129 ]
  %144 = phi ptr [ null, %135 ], [ %140, %137 ], [ null, %129 ]
  %145 = phi i32 [ 2, %135 ], [ 3, %137 ], [ 1, %129 ]
  %146 = icmp ugt i32 %111, 3
  br i1 %146, label %147, label %172

147:                                              ; preds = %142
  %148 = icmp eq ptr %143, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = icmp eq ptr %144, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %149, %147
  %152 = phi ptr [ %143, %147 ], [ %144, %149 ]
  %153 = phi ptr [ %144, %147 ], [ null, %149 ]
  %154 = add nuw nsw i32 %145, 1
  %155 = getelementptr [14 x ptr], ptr %4, i32 0, i32 %145
  store ptr %152, ptr %155, align 4
  br label %156

156:                                              ; preds = %151, %149
  %157 = phi ptr [ null, %149 ], [ %153, %151 ]
  %158 = phi i32 [ %145, %149 ], [ %154, %151 ]
  %159 = icmp ugt i32 %111, 4
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = icmp eq ptr %157, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %160
  %163 = add nsw i32 %158, 1
  %164 = getelementptr [14 x ptr], ptr %4, i32 0, i32 %158
  store ptr %157, ptr %164, align 4
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi i32 [ %158, %160 ], [ %163, %162 ]
  %167 = icmp ugt i32 %111, 5
  br i1 %167, label %168, label %172

168:                                              ; preds = %168, %165
  %169 = phi i32 [ %170, %168 ], [ 5, %165 ]
  %170 = add nuw nsw i32 %169, 1
  %171 = icmp ult i32 %170, %111
  br i1 %171, label %168, label %172, !llvm.loop !8

172:                                              ; preds = %168, %165, %156, %142, %129, %123, %52
  %173 = phi i32 [ 1, %52 ], [ 2, %123 ], [ 1, %129 ], [ %145, %142 ], [ %158, %156 ], [ %166, %168 ], [ %166, %165 ]
  %174 = getelementptr [14 x ptr], ptr %4, i32 0, i32 %173
  store ptr %113, ptr %174, align 4
  %175 = icmp ne ptr %49, %48
  %176 = xor i1 %17, %175
  %177 = add i32 %173, -1
  %178 = getelementptr [14 x ptr], ptr %4, i32 0, i32 %177
  %179 = load ptr, ptr %53, align 4
  %180 = select i1 %176, ptr %178, ptr %4
  %181 = load ptr, ptr %180, align 4
  br label %182

182:                                              ; preds = %182, %172
  %183 = phi i32 [ 0, %172 ], [ %185, %182 ]
  %184 = icmp sgt i32 %183, %173
  %185 = add i32 %183, 1
  br i1 %184, label %186, label %182

186:                                              ; preds = %182
  %187 = select i1 %176, ptr %113, ptr %179
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  %188 = icmp ne ptr %181, null
  %189 = icmp ne ptr %187, null
  %190 = select i1 %188, i1 %189, i1 false
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %13, i32 0, i32 3
  br label %197

193:                                              ; preds = %186, %51
  %194 = phi ptr [ null, %51 ], [ %187, %186 ]
  %195 = phi ptr [ null, %51 ], [ %181, %186 ]
  %196 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %13, i32 0, i32 2
  br label %197

197:                                              ; preds = %193, %191
  %198 = phi ptr [ %187, %191 ], [ %194, %193 ]
  %199 = phi ptr [ %181, %191 ], [ %195, %193 ]
  %200 = phi ptr [ @rsnd_dmapp_ops, %191 ], [ @rsnd_dmaen_ops, %193 ]
  %201 = phi i32 [ 0, %191 ], [ 1, %193 ]
  %202 = phi ptr [ @rsnd_dmapp_attach, %191 ], [ @rsnd_dmaen_attach, %193 ]
  %203 = phi ptr [ %192, %191 ], [ %196, %193 ]
  %204 = getelementptr inbounds %struct.rsnd_priv, ptr %11, i32 0, i32 2
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 15
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %210

208:                                              ; preds = %197
  %209 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %13, i32 0, i32 2
  br label %210

210:                                              ; preds = %208, %197
  %211 = phi ptr [ @rsnd_dmaen_ops, %208 ], [ %200, %197 ]
  %212 = phi i32 [ 1, %208 ], [ %201, %197 ]
  %213 = phi ptr [ @rsnd_dmaen_attach, %208 ], [ %202, %197 ]
  %214 = phi ptr [ %209, %208 ], [ %203, %197 ]
  %215 = load i32, ptr %214, align 4
  %216 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 52, i32 noundef 3520) #5
  %217 = icmp eq ptr %216, null
  br i1 %217, label %237, label %218

218:                                              ; preds = %210
  store ptr %216, ptr %2, align 4
  %219 = tail call i32 @rsnd_mod_init(ptr noundef %11, ptr noundef nonnull %216, ptr noundef nonnull %211, ptr noundef null, i32 noundef %212, i32 noundef %215) #5
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %237, label %221

221:                                              ; preds = %218
  %222 = tail call i32 %213(ptr noundef %0, ptr noundef nonnull %216, ptr noundef %199, ptr noundef %198) #5, !callees !10
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %221
  %225 = tail call fastcc i32 @rsnd_dma_addr(ptr noundef %0, ptr noundef %199, i32 noundef %18, i32 noundef 1) #5
  %226 = getelementptr inbounds %struct.rsnd_dma, ptr %216, i32 0, i32 3
  store i32 %225, ptr %226, align 4
  %227 = tail call fastcc i32 @rsnd_dma_addr(ptr noundef %0, ptr noundef %198, i32 noundef %18, i32 noundef 0) #5
  %228 = getelementptr inbounds %struct.rsnd_dma, ptr %216, i32 0, i32 4
  store i32 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.rsnd_dma, ptr %216, i32 0, i32 1
  store ptr %199, ptr %229, align 4
  %230 = getelementptr inbounds %struct.rsnd_dma, ptr %216, i32 0, i32 2
  store ptr %198, ptr %230, align 4
  %231 = load ptr, ptr %2, align 4
  br label %232

232:                                              ; preds = %224, %3
  %233 = phi ptr [ %231, %224 ], [ %5, %3 ]
  %234 = getelementptr inbounds %struct.rsnd_mod, ptr %233, i32 0, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = tail call i32 @rsnd_dai_connect(ptr noundef %233, ptr noundef %0, i32 noundef %235) #5
  br label %237

237:                                              ; preds = %232, %221, %218, %210, %7
  %238 = phi i32 [ %236, %232 ], [ %222, %221 ], [ %219, %218 ], [ -12, %210 ], [ -11, %7 ]
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_dma_probe(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource_byname(ptr noundef %2, i32 noundef 512, ptr noundef nonnull @.str) #5
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #5
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %9, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %10, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = load i32, ptr %9, align 4
  %18 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %10, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %9) #5
  store ptr %19, ptr %10, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = ptrtoint ptr %19 to i32
  br label %26

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 5
  store ptr %10, ptr %24, align 4
  %25 = tail call i32 @rsnd_mod_init(ptr noundef null, ptr noundef nonnull @mem, ptr noundef nonnull @mem_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  br label %26

26:                                               ; preds = %23, %21, %14, %1
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ], [ 0, %14 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_attach(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rsnd_dma, ptr %1, i32 0, i32 5
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %5, align 4
  %14 = tail call fastcc i32 @rsnd_dmapp_get_id(ptr noundef %0, ptr noundef %2) #5
  %15 = shl i32 %14, 24
  %16 = tail call fastcc i32 @rsnd_dmapp_get_id(ptr noundef %0, ptr noundef %3) #5
  %17 = shl i32 %16, 16
  %18 = add i32 %17, %15
  %19 = or i32 %18, 1
  %20 = getelementptr inbounds %struct.rsnd_dma, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %12, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_attach(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_dai, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %2, null
  %12 = icmp eq ptr %3, null
  %13 = xor i1 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  br i1 %11, label %15, label %17

15:                                               ; preds = %14
  %16 = tail call ptr @rsnd_mod_dma_req(ptr noundef %0, ptr noundef nonnull %2) #5
  br label %19

17:                                               ; preds = %14
  %18 = tail call ptr @rsnd_mod_dma_req(ptr noundef %0, ptr noundef %3) #5
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %4
  %25 = phi ptr [ %20, %19 ], [ null, %4 ]
  %26 = icmp eq ptr %25, inttoptr (i32 -517 to ptr)
  %27 = select i1 %26, i32 -517, i32 -11
  br label %36

28:                                               ; preds = %19
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %20) #5
  %33 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %10, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %28, %24
  %37 = phi i32 [ 0, %28 ], [ %27, %24 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dma_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x [2 x [3 x %struct.dma_addr]]], align 8
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 1
  %14 = icmp eq ptr %1, null
  %15 = or i1 %14, %13
  br i1 %15, label %138, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = tail call i32 @rsnd_gen_get_phy_addr(ptr noundef %9, i32 noundef 3) #5
  %20 = tail call i32 @rsnd_gen_get_phy_addr(ptr noundef %9, i32 noundef 0) #5
  %21 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i1 [ true, %16 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ne ptr %32, null
  %34 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, null
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %41, %37, %28
  %47 = phi i32 [ 1, %37 ], [ 1, %28 ], [ %45, %41 ]
  %48 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %1) #5
  %49 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @rsnd_mod_id_sub(ptr noundef %50) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #5
  %52 = getelementptr inbounds %struct.dma_addr, ptr %5, i32 1
  %53 = shl i32 %48, 10
  %54 = add i32 %53, %20
  %55 = add i32 %54, -5226496
  store i64 0, ptr %5, align 8
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.dma_addr, ptr %5, i32 1, i32 1
  %57 = add i32 %54, -2097152
  store i32 %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dma_addr, ptr %5, i32 2
  %59 = add i32 %54, -5210112
  store i32 %59, ptr %58, align 8
  %60 = getelementptr inbounds %struct.dma_addr, ptr %5, i32 2, i32 1
  store i32 %57, ptr %60, align 4
  %61 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1
  store i32 0, ptr %61, align 8
  %62 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1, i32 0, i32 1
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1, i32 1
  %64 = add i32 %54, -2080768
  store i32 %64, ptr %63, align 8
  %65 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1, i32 1, i32 1
  %66 = add i32 %54, -5242880
  store i32 %66, ptr %65, align 4
  %67 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1, i32 2
  %68 = add i32 %54, -2064384
  store i32 %68, ptr %67, align 8
  %69 = getelementptr inbounds [3 x %struct.dma_addr], ptr %5, i32 1, i32 2, i32 1
  store i32 %66, ptr %69, align 4
  %70 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1
  %71 = add i32 %19, -3145728
  %72 = shl i32 %48, 6
  %73 = add i32 %71, %72
  %74 = add i32 %73, 12
  store i32 %74, ptr %70, align 8
  %75 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 0, i32 1
  %77 = shl i32 %48, 12
  %78 = freeze i32 %51
  %79 = sdiv i32 %78, 4
  %80 = mul i32 %79, 4
  %81 = sub i32 %78, %80
  %82 = shl nsw i32 %81, 10
  %83 = sdiv i32 %48, -9
  %84 = shl i32 %83, 14
  %85 = add i32 %77, %19
  %86 = add i32 %84, 40960
  %87 = mul i32 %79, %86
  %88 = add i32 %87, -1314816
  %89 = add i32 %88, %85
  %90 = add i32 %89, %82
  store i32 %90, ptr %76, align 8
  %91 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 0, i32 1, i32 1
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 0, i32 2
  store i32 %90, ptr %92, align 8
  %93 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 0, i32 2, i32 1
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1
  store i32 0, ptr %94, align 8
  %95 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1, i32 0, i32 1
  %96 = add i32 %73, 8
  store i32 %96, ptr %95, align 4
  %97 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1, i32 1
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1, i32 1, i32 1
  store i32 %90, ptr %98, align 4
  %99 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1, i32 2
  store i32 0, ptr %99, align 8
  %100 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 1, i32 1, i32 2, i32 1
  store i32 %90, ptr %100, align 4
  %101 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2
  %102 = add i32 %87, -4460544
  %103 = add i32 %102, %85
  %104 = add i32 %103, %82
  store i32 %104, ptr %101, align 8
  %105 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 0, i32 0, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 0, i32 1
  store i32 %90, ptr %106, align 8
  %107 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 0, i32 1, i32 1
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 0, i32 2
  store i32 %90, ptr %108, align 8
  %109 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 0, i32 2, i32 1
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1
  store i32 0, ptr %110, align 8
  %111 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1, i32 0, i32 1
  store i32 %104, ptr %111, align 4
  %112 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1, i32 1
  store i32 0, ptr %112, align 8
  %113 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1, i32 1, i32 1
  store i32 %90, ptr %113, align 4
  %114 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1, i32 2
  store i32 0, ptr %114, align 8
  %115 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %5, i32 2, i32 1, i32 2, i32 1
  store i32 %90, ptr %115, align 4
  %116 = icmp eq i32 %48, 9
  %117 = icmp sgt i32 %51, 3
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %120

119:                                              ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef 9, i32 noundef %51) #6
  br label %120

120:                                              ; preds = %119, %46
  %121 = icmp eq i32 %47, 0
  %122 = select i1 %121, i1 true, i1 %33
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11) #6
  br label %124

124:                                              ; preds = %123, %120
  br i1 %29, label %125, label %129

125:                                              ; preds = %124
  %126 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %0) #5
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 %30, i32 2
  br label %129

129:                                              ; preds = %125, %124
  %130 = phi i32 [ 0, %124 ], [ %128, %125 ]
  %131 = zext i1 %33 to i32
  %132 = icmp eq i32 %3, 0
  %133 = add nuw nsw i32 %47, %131
  %134 = getelementptr [3 x [2 x [3 x %struct.dma_addr]]], ptr %5, i32 0, i32 %130, i32 %2, i32 %133
  %135 = getelementptr [3 x [2 x [3 x %struct.dma_addr]]], ptr %5, i32 0, i32 %130, i32 %2, i32 %133, i32 1
  %136 = select i1 %132, ptr %135, ptr %134
  %137 = load i32, ptr %136, align 4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #5
  br label %138

138:                                              ; preds = %129, %4
  %139 = phi i32 [ %137, %129 ], [ 0, %4 ]
  ret i32 %139
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 4
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %15 = and i32 %14, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #5, !srcloc !14
  br label %16

16:                                               ; preds = %29, %3
  %17 = phi i32 [ 0, %3 ], [ %31, %29 ]
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.rsnd_priv, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 44
  %23 = load i32, ptr %10, align 4
  %24 = shl i32 %23, 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = add nuw nsw i32 %17, 1
  %32 = icmp eq i32 %31, 1024
  br i1 %32, label %33, label %16

33:                                               ; preds = %29, %16
  %34 = phi i32 [ 0, %16 ], [ -5, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 4
  %15 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %5) #5, !srcloc !14
  %16 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.rsnd_priv, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  %23 = load i32, ptr %12, align 4
  %24 = shl i32 %23, 4
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %17) #5, !srcloc !14
  %26 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.rsnd_priv, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 44
  %33 = load i32, ptr %12, align 4
  %34 = shl i32 %33, 4
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %27) #5, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_dmapp_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_dma, ptr %2, i32 0, i32 5
  %9 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  %13 = shl i32 %12, 4
  %14 = add i32 %13, 32
  tail call void @rsnd_debugfs_reg_show(ptr noundef %0, i32 noundef %10, ptr noundef %11, i32 noundef %14, i32 noundef 16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_reg_show(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dmapp_get_id(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %4, %1
  %10 = icmp eq ptr %6, %1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = tail call i32 @rsnd_mod_id_sub(ptr noundef %6) #5
  %14 = tail call i32 @rsnd_mod_id(ptr noundef %1) #5
  %15 = shl i32 %14, 3
  %16 = add i32 %15, %13
  br label %27

17:                                               ; preds = %2
  %18 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @rsnd_mod_id(ptr noundef %1) #5
  br label %27

23:                                               ; preds = %17
  %24 = icmp eq ptr %8, %1
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = tail call i32 @rsnd_mod_id(ptr noundef %1) #5
  br label %27

27:                                               ; preds = %25, %21, %12
  %28 = phi ptr [ @gen2_id_table_scu, %21 ], [ @gen2_id_table_cmd, %25 ], [ @gen2_id_table_ssiu, %12 ]
  %29 = phi i32 [ %22, %21 ], [ %26, %25 ], [ %16, %12 ]
  %30 = phi i32 [ 10, %21 ], [ 2, %25 ], [ 80, %12 ]
  %31 = icmp sgt i32 %30, %29
  br i1 %31, label %40, label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rsnd_dai, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %39 = tail call ptr @rsnd_mod_name(ptr noundef %1) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.4, ptr noundef %39) #6
  br label %44

40:                                               ; preds = %27
  %41 = getelementptr i8, ptr %28, i32 %29
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi i32 [ 0, %32 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_sub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #5
  %10 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 28, i1 false)
  %11 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rsnd_dai, ptr %12, i32 0, i32 1
  %14 = icmp eq ptr %13, %1
  %15 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %1, ptr noundef null) #5
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %26) #5
  switch i32 %27, label %30 [
    i32 8, label %31
    i32 16, label %28
    i32 32, label %29
  ]

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %27) #6
  br label %100

31:                                               ; preds = %29, %28, %23, %3
  %32 = phi i32 [ 4, %3 ], [ 1, %23 ], [ 2, %28 ], [ 4, %29 ]
  %33 = select i1 %14, i32 1, i32 2
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 %32, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 %32, ptr %41, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 44
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %100, label %47

47:                                               ; preds = %31
  %48 = call i32 %45(ptr noundef %42, ptr noundef nonnull %4) #5
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %100, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 51
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 18
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 21
  %59 = load i32, ptr %58, align 8
  %60 = mul i32 %59, %57
  %61 = lshr i32 %60, 3
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %53, i32 0, i32 16
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, %59
  %65 = lshr i32 %64, 3
  %66 = icmp eq ptr %51, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %50
  %68 = load ptr, ptr %51, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 40
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = call ptr %72(ptr noundef nonnull %51, i32 noundef %55, i32 noundef %61, i32 noundef %65, i32 noundef %33, i32 noundef 3) #5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %70, %67, %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7) #6
  br label %100

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %75, i32 0, i32 6
  store ptr @rsnd_dmaen_complete, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %75, i32 0, i32 8
  store ptr %0, ptr %80, align 4
  %81 = load ptr, ptr %52, align 4
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 18
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 21
  %85 = load i32, ptr %84, align 8
  %86 = mul i32 %85, %83
  %87 = lshr i32 %86, 3
  %88 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %75, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef nonnull %75) #5
  %92 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  %93 = icmp slt i32 %91, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8) #6
  br label %100

95:                                               ; preds = %78
  %96 = load ptr, ptr %5, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dma_device, ptr %97, i32 0, i32 50
  %99 = load ptr, ptr %98, align 4
  call void %99(ptr noundef %96) #5
  br label %100

100:                                              ; preds = %95, %94, %77, %47, %31, %30
  %101 = phi i32 [ -5, %94 ], [ 0, %95 ], [ -5, %77 ], [ -22, %30 ], [ %48, %47 ], [ -38, %31 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #5
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef nonnull %5) #5
  br label %14

14:                                               ; preds = %12, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_pointer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 49
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %4) #5
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 2
  %23 = getelementptr inbounds %struct.dma_tx_state, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %34

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %24
  %31 = sub i32 %29, %24
  %32 = shl i32 %31, 3
  %33 = select i1 %30, i32 0, i32 %32
  br label %34

34:                                               ; preds = %27, %11
  %35 = phi i32 [ 0, %11 ], [ %33, %27 ]
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 21
  %37 = load i32, ptr %36, align 8
  %38 = udiv i32 %35, %37
  store i32 %38, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_prepare(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %11, null
  %15 = icmp eq ptr %13, null
  %16 = xor i1 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  br i1 %14, label %18, label %20

18:                                               ; preds = %17
  %19 = tail call ptr @rsnd_mod_dma_req(ptr noundef %1, ptr noundef nonnull %11) #5
  br label %22

20:                                               ; preds = %17
  %21 = tail call ptr @rsnd_mod_dma_req(ptr noundef %1, ptr noundef %13) #5
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  store ptr %23, ptr %4, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %9
  store ptr null, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #6
  br label %28

28:                                               ; preds = %27, %22, %3
  %29 = phi i32 [ -5, %27 ], [ 0, %3 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_cleanup(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.rsnd_dma, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @dma_release_channel(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %7, %3
  store ptr null, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_dmaen_complete(ptr noundef %0) #0 {
  tail call void @rsnd_mod_interrupt(ptr noundef %0, ptr noundef nonnull @__rsnd_dmaen_complete) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__rsnd_dmaen_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @rsnd_io_is_working(ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @rsnd_dai_period_elapsed(ptr noundef %1) #5
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dai_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_dma_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_gen_get_phy_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_use_busif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 4}
!10 = !{ptr @rsnd_dmaen_attach, ptr @rsnd_dmapp_attach}
!11 = !{i64 5143193}
!12 = !{i64 2152675156}
!13 = !{i64 2152676378}
!14 = !{i64 5142775}
!15 = !{!"auto-init"}
