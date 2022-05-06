; ModuleID = '/llk/IR/drivers/usb/dwc2/hcd_ddma.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_ddma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.dwc2_host_chan = type { i8, [3 x i8], i16, ptr, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, ptr, %struct.list_head, i32, i32, %struct.list_head }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.dwc2_dma_desc = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"SPLIT Transfers are not supported in Descriptor DMA mode.\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\013hsotg = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"qh->channel = %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"hsotg->frame_list = %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"EIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Babble\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"XactErr\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: Unhandled descriptor error status (%d)\0A\00", align 1
@__func__.dwc2_update_non_isoc_urb_state_ddma = private unnamed_addr constant [36 x i8] c"dwc2_update_non_isoc_urb_state_ddma\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qh_init_ddma(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #7
  br label %176

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 3
  %17 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  %19 = select i1 %16, ptr %17, ptr %18
  %20 = select i1 %16, i32 2048, i32 512
  br label %23

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %22, %21 ], [ %19, %13 ]
  %25 = phi i32 [ 512, %21 ], [ %20, %13 ]
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 28
  store i32 %25, ptr %27, align 4
  %28 = or i32 %2, 257
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %26, i32 noundef %28) #8
  %30 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %176, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %0, align 8
  %34 = load i32, ptr %27, align 4
  %35 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %29) #8
  %36 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %48, !prof !8

39:                                               ; preds = %32
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %40 = tail call ptr @dev_driver_string(ptr noundef %33) #8
  %41 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %33, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %42, %39 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %40, ptr noundef %47) #8
  br label %48

48:                                               ; preds = %46, %32
  br i1 %35, label %57, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %29 to i32
  %52 = add i32 %51, 1073741824
  %53 = lshr i32 %52, 12
  %54 = getelementptr %struct.page, ptr %50, i32 %53
  %55 = and i32 %51, 4088
  %56 = tail call i32 @dma_map_page_attrs(ptr noundef %33, ptr noundef %54, i32 noundef %55, i32 noundef %34, i32 noundef 1, i32 noundef 0) #8
  br label %57

57:                                               ; preds = %49, %48
  %58 = phi i32 [ %56, %49 ], [ -1, %48 ]
  %59 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  store i32 %58, ptr %59, align 8
  %60 = load i8, ptr %10, align 4
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %64 = load i8, ptr %63, align 2
  %65 = icmp eq i8 %64, 3
  %66 = select i1 %65, i32 1024, i32 256
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i32 [ 256, %57 ], [ %66, %62 ]
  %69 = or i32 %2, 256
  %70 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef %69) #9
  %71 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  store ptr %70, ptr %71, align 8
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load ptr, ptr %0, align 8
  %75 = load i32, ptr %59, align 8
  %76 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef 2, i32 noundef 0) #8
  %77 = load ptr, ptr %30, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %77) #8
  store ptr null, ptr %30, align 4
  br label %176

78:                                               ; preds = %67
  %79 = load i8, ptr %10, align 4
  switch i8 %79, label %151 [
    i8 1, label %80
    i8 3, label %80
  ]

80:                                               ; preds = %78, %78
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 61
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %151

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 63
  store i32 256, ptr %85, align 4
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 8), align 4
  %87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 2849, i32 noundef 256) #10
  store ptr %87, ptr %81, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %153, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %0, align 8
  %91 = load i32, ptr %85, align 4
  %92 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %87) #8
  %93 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %105, !prof !8

96:                                               ; preds = %89
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %97 = tail call ptr @dev_driver_string(ptr noundef %90) #8
  %98 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load ptr, ptr %90, align 4
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi ptr [ %102, %101 ], [ %99, %96 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %97, ptr noundef %104) #8
  br label %105

105:                                              ; preds = %103, %89
  br i1 %92, label %114, label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr @mem_map, align 4
  %108 = ptrtoint ptr %87 to i32
  %109 = add i32 %108, 1073741824
  %110 = lshr i32 %109, 12
  %111 = getelementptr %struct.page, ptr %107, i32 %110
  %112 = and i32 %108, 4088
  %113 = tail call i32 @dma_map_page_attrs(ptr noundef %90, ptr noundef %111, i32 noundef %112, i32 noundef %91, i32 noundef 1, i32 noundef 0) #8
  br label %114

114:                                              ; preds = %106, %105
  %115 = phi i32 [ %113, %106 ], [ -1, %105 ]
  %116 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 62
  store i32 %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %117) #8
  %119 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 1024
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %123 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %124 = load i8, ptr %123, align 8, !range !11
  %125 = icmp eq i8 %124, 0
  %126 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  %127 = select i1 %125, i32 %122, i32 %126
  %128 = and i32 %127, 67108864
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %114
  %131 = load i32, ptr %116, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %125, label %136, label %132

132:                                              ; preds = %130
  %133 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  %134 = load ptr, ptr %119, align 4
  %135 = getelementptr i8, ptr %134, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #8, !srcloc !12
  br label %139

136:                                              ; preds = %130
  %137 = load ptr, ptr %119, align 4
  %138 = getelementptr i8, ptr %137, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %131) #8, !srcloc !12
  br label %139

139:                                              ; preds = %136, %132
  %140 = or i32 %127, 117440512
  %141 = load i8, ptr %123, align 8, !range !11
  %142 = icmp eq i8 %141, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = tail call i32 @llvm.bswap.i32(i32 %140) #8
  %145 = load ptr, ptr %119, align 4
  %146 = getelementptr i8, ptr %145, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #8, !srcloc !12
  br label %150

147:                                              ; preds = %139
  %148 = load ptr, ptr %119, align 4
  %149 = getelementptr i8, ptr %148, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %140) #8, !srcloc !12
  br label %150

150:                                              ; preds = %147, %143, %114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %117, i32 noundef %118) #8
  br label %151

151:                                              ; preds = %150, %80, %78
  %152 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 20
  store i16 0, ptr %152, align 4
  br label %176

153:                                              ; preds = %84
  %154 = load i8, ptr %10, align 4
  %155 = icmp eq i8 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %158 = load i8, ptr %157, align 2
  %159 = icmp eq i8 %158, 3
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  br label %164

162:                                              ; preds = %156, %153
  %163 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi ptr [ %161, %160 ], [ %163, %162 ]
  %166 = load ptr, ptr %30, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %165, align 4
  %170 = load ptr, ptr %0, align 8
  %171 = load i32, ptr %59, align 8
  %172 = load i32, ptr %27, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef 2, i32 noundef 0) #8
  %173 = load ptr, ptr %30, align 4
  tail call void @kmem_cache_free(ptr noundef %169, ptr noundef %173) #8
  store ptr null, ptr %30, align 4
  br label %174

174:                                              ; preds = %168, %164
  %175 = load ptr, ptr %71, align 8
  tail call void @kfree(ptr noundef %175) #8
  store ptr null, ptr %71, align 8
  br label %176

176:                                              ; preds = %174, %151, %73, %23, %7
  %177 = phi i32 [ 0, %151 ], [ -22, %7 ], [ -12, %174 ], [ -12, %73 ], [ -12, %23 ]
  ret i32 %177
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_free_ddma(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 65
  br label %14

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 64
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 28
  %25 = load i32, ptr %24, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 2, i32 noundef 0) #8
  %26 = load ptr, ptr %16, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %26) #8
  store ptr null, ptr %16, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  %29 = load ptr, ptr %28, align 8
  tail call void @kfree(ptr noundef %29) #8
  store ptr null, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %32 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %0, ptr noundef %1)
  br label %36

36:                                               ; preds = %35, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #8
  %37 = load i8, ptr %3, align 4
  switch i8 %37, label %84 [
    i8 1, label %38
    i8 3, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %40 = load i8, ptr %39, align 2, !range !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 61
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %52 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 1024
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %57 = load i8, ptr %56, align 8, !range !11
  %58 = icmp eq i8 %57, 0
  %59 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %60 = select i1 %58, i32 %55, i32 %59
  %61 = and i32 %60, 67108864
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %50
  %64 = and i32 %60, -67108865
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %58, label %69, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr i8, ptr %67, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !12
  br label %72

69:                                               ; preds = %63
  %70 = load ptr, ptr %52, align 4
  %71 = getelementptr i8, ptr %70, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %64) #8, !srcloc !12
  br label %72

72:                                               ; preds = %69, %65, %50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %51) #8
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #8
  %74 = load ptr, ptr %47, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 62
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 63
  %81 = load i32, ptr %80, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef 2, i32 noundef 0) #8
  %82 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %82) #8
  store ptr null, ptr %47, align 4
  br label %83

83:                                               ; preds = %76, %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %73) #8
  br label %84

84:                                               ; preds = %83, %46, %42, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_release_channel_ddma(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %19 [
    i8 2, label %7
    i8 0, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %9 = load i8, ptr %8, align 2, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  br label %23

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 8
  br label %23

19:                                               ; preds = %2
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 53
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 25
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 25, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %29, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %27
  tail call void @dwc2_hc_cleanup(ptr noundef %0, ptr noundef %4) #8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 50, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %28, ptr %37, align 4
  store ptr %36, ptr %28, align 4
  %39 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 25, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %28, ptr %38, align 4
  store ptr null, ptr %24, align 4
  br label %40

40:                                               ; preds = %35, %23
  store ptr null, ptr %3, align 8
  %41 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 20
  store i16 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i8, ptr %5, align 4
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %50 = load i8, ptr %49, align 2
  %51 = icmp eq i8 %50, 3
  %52 = select i1 %51, i32 2048, i32 512
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i32 [ 512, %45 ], [ %52, %48 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 %43, i8 0, i32 %54, i1 false)
  br label %55

55:                                               ; preds = %53, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_start_xfer_ddma(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %6 = load i24, ptr %5, align 1
  %7 = lshr i24 %6, 16
  %8 = and i24 %7, 3
  %9 = zext i24 %8 to i32
  switch i32 %9, label %270 [
    i32 0, label %10
    i32 2, label %10
    i32 3, label %11
    i32 1, label %12
  ]

10:                                               ; preds = %2, %2
  tail call fastcc void @dwc2_init_non_isoc_dma_desc(ptr noundef %0, ptr noundef %1)
  br label %271

11:                                               ; preds = %2
  tail call fastcc void @dwc2_init_non_isoc_dma_desc(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %271

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 20
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 10
  %18 = load i8, ptr %17, align 1
  br label %81

19:                                               ; preds = %12
  %20 = icmp eq ptr %4, null
  %21 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #8
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 3
  br i1 %20, label %57, label %27

27:                                               ; preds = %19
  br i1 %26, label %28, label %35

28:                                               ; preds = %27
  %29 = and i16 %22, 7
  %30 = icmp ugt i16 %29, 4
  %31 = select i1 %30, i16 16, i16 8
  %32 = add i16 %31, %22
  %33 = lshr i16 %32, 3
  %34 = and i16 %33, 2047
  br label %38

35:                                               ; preds = %27
  %36 = add i16 %22, 2
  %37 = and i16 %36, 16383
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i16 [ %31, %28 ], [ 1, %35 ]
  %40 = phi i16 [ %34, %28 ], [ %37, %35 ]
  %41 = and i16 %40, 63
  %42 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 63
  %45 = sub nuw nsw i16 64, %41
  %46 = add nuw nsw i16 %45, %44
  %47 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = add nuw nsw i32 %49, 7
  %51 = lshr i32 %50, 3
  %52 = select i1 %26, i32 %51, i32 %49
  %53 = trunc i32 %52 to i16
  %54 = urem i16 %46, %53
  %55 = add nuw nsw i16 %54, %40
  %56 = trunc i16 %55 to i8
  br label %73

57:                                               ; preds = %19
  br i1 %26, label %58, label %65

58:                                               ; preds = %57
  %59 = and i16 %22, 7
  %60 = icmp ugt i16 %59, 4
  %61 = select i1 %60, i16 16, i16 8
  %62 = add i16 %61, %22
  %63 = lshr i16 %62, 3
  %64 = and i16 %63, 2047
  br label %68

65:                                               ; preds = %57
  %66 = add i16 %22, 2
  %67 = and i16 %66, 16383
  br label %68

68:                                               ; preds = %65, %58
  %69 = phi i16 [ %61, %58 ], [ 1, %65 ]
  %70 = phi i16 [ %64, %58 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  store i16 %70, ptr %71, align 8
  %72 = trunc i16 %70 to i8
  br label %73

73:                                               ; preds = %68, %38
  %74 = phi i8 [ %56, %38 ], [ %72, %68 ]
  %75 = phi i16 [ %39, %38 ], [ %69, %68 ]
  %76 = and i8 %74, 63
  %77 = shl i8 %74, 3
  %78 = select i1 %26, i8 %77, i8 %76
  %79 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 10
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 9
  store i8 %78, ptr %80, align 2
  br label %81

81:                                               ; preds = %73, %16
  %82 = phi i8 [ %18, %16 ], [ %78, %73 ]
  %83 = phi i16 [ 0, %16 ], [ %75, %73 ]
  %84 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 10
  %85 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %86 = load i16, ptr %85, align 4
  %87 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #8
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  store i16 %88, ptr %89, align 4
  %90 = and i16 %88, 63
  %91 = load i8, ptr %84, align 1
  %92 = zext i8 %91 to i16
  %93 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %94 = load i8, ptr %93, align 2
  %95 = add i16 %86, %92
  %96 = icmp eq i8 %94, 3
  %97 = select i1 %96, i16 255, i16 63
  %98 = and i16 %97, %95
  %99 = sub i16 %88, %95
  %100 = and i16 %99, 32
  %101 = icmp ne i16 %90, %98
  %102 = icmp eq i16 %100, 0
  %103 = and i1 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %81
  %105 = icmp eq i16 %90, %98
  %106 = icmp ult i16 %86, 32
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %110, label %114

108:                                              ; preds = %81
  %109 = icmp ult i16 %86, 32
  br i1 %109, label %110, label %114

110:                                              ; preds = %108, %104
  %111 = add nuw nsw i16 %90, %86
  %112 = and i16 %97, %111
  %113 = trunc i16 %112 to i8
  store i8 %113, ptr %84, align 1
  br label %114

114:                                              ; preds = %110, %108, %104
  %115 = phi i8 [ %113, %110 ], [ %82, %108 ], [ %82, %104 ]
  %116 = zext i8 %115 to i16
  %117 = load i16, ptr %85, align 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %121 = load i8, ptr %120, align 4
  %122 = icmp eq i8 %121, 1
  %123 = select i1 %122, i1 %96, i1 false
  %124 = select i1 %123, i32 256, i32 64
  %125 = zext i16 %117 to i32
  %126 = add nsw i32 %125, -1
  %127 = add nuw nsw i32 %126, %124
  %128 = udiv i32 %127, %125
  %129 = trunc i32 %128 to i16
  %130 = icmp eq i16 %83, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %119
  %132 = load ptr, ptr %3, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = udiv i16 %83, %117
  %136 = sub i16 %129, %135
  br label %137

137:                                              ; preds = %134, %131, %119, %114
  %138 = phi i16 [ %129, %131 ], [ %136, %134 ], [ %129, %119 ], [ 0, %114 ]
  %139 = select i1 %96, i32 3072, i32 1023
  %140 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %232, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %145 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  %146 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  br label %147

147:                                              ; preds = %228, %143
  %148 = phi ptr [ %141, %143 ], [ %230, %228 ]
  %149 = phi i16 [ %116, %143 ], [ %229, %228 ]
  %150 = getelementptr i8, ptr %148, i32 -32
  %151 = load i8, ptr %150, align 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %147
  %154 = getelementptr i8, ptr %148, i32 -14
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %148, i32 -8
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %158, i32 0, i32 10
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, %156
  br i1 %161, label %228, label %162

162:                                              ; preds = %153, %147
  %163 = getelementptr i8, ptr %148, i32 -22
  store i16 %149, ptr %163, align 2
  %164 = getelementptr i8, ptr %148, i32 -14
  %165 = load i16, ptr %13, align 4
  %166 = icmp ult i16 %165, %138
  br i1 %166, label %167, label %225

167:                                              ; preds = %162
  %168 = getelementptr i8, ptr %148, i32 -8
  br label %169

169:                                              ; preds = %213, %167
  %170 = phi i16 [ %149, %167 ], [ %222, %213 ]
  %171 = load i16, ptr %164, align 2
  %172 = zext i16 %171 to i32
  %173 = load ptr, ptr %168, align 4
  %174 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %173, i32 0, i32 10
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, %172
  br i1 %176, label %177, label %225

177:                                              ; preds = %169
  %178 = load ptr, ptr %144, align 4
  %179 = zext i16 %170 to i32
  %180 = getelementptr %struct.dwc2_dma_desc, ptr %178, i32 %179
  store i64 0, ptr %180, align 1
  %181 = load ptr, ptr %168, align 4
  %182 = load i16, ptr %164, align 2
  %183 = zext i16 %182 to i32
  %184 = getelementptr %struct.dwc2_hcd_urb, ptr %181, i32 0, i32 14, i32 %183
  %185 = getelementptr %struct.dwc2_hcd_urb, ptr %181, i32 0, i32 14, i32 %183, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %145, align 8
  %188 = getelementptr i32, ptr %187, i32 %179
  %189 = tail call i32 @llvm.umin.i32(i32 %186, i32 %139) #8
  store i32 %189, ptr %188, align 4
  %190 = load ptr, ptr %168, align 4
  %191 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %190, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = load i32, ptr %184, align 4
  %194 = add i32 %193, %192
  %195 = getelementptr %struct.dwc2_dma_desc, ptr %178, i32 %179, i32 1
  store i32 %194, ptr %195, align 1
  %196 = load ptr, ptr %145, align 8
  %197 = getelementptr i32, ptr %196, i32 %179
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 4095
  %200 = or i32 %199, -2147483648
  store i32 %200, ptr %180, align 1
  %201 = load i16, ptr %13, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %13, align 4
  %203 = load i16, ptr %164, align 2
  %204 = add i16 %203, 1
  store i16 %204, ptr %164, align 2
  %205 = zext i16 %204 to i32
  %206 = load ptr, ptr %168, align 4
  %207 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %206, i32 0, i32 10
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, %205
  br i1 %209, label %210, label %213

210:                                              ; preds = %177
  %211 = load i32, ptr %180, align 1
  %212 = or i32 %211, 33554432
  store i32 %212, ptr %180, align 1
  br label %213

213:                                              ; preds = %210, %177
  %214 = load ptr, ptr %0, align 8
  %215 = load i32, ptr %146, align 8
  %216 = shl nuw nsw i32 %179, 3
  %217 = add i32 %215, %216
  tail call void @dma_sync_single_for_device(ptr noundef %214, i32 noundef %217, i32 noundef 8, i32 noundef 1) #8
  %218 = load i8, ptr %93, align 2
  %219 = add i16 %170, %86
  %220 = icmp eq i8 %218, 3
  %221 = select i1 %220, i16 255, i16 63
  %222 = and i16 %221, %219
  %223 = load i16, ptr %13, align 4
  %224 = icmp ult i16 %223, %138
  br i1 %224, label %169, label %225

225:                                              ; preds = %213, %169, %162
  %226 = phi i16 [ %149, %162 ], [ %170, %169 ], [ %222, %213 ]
  %227 = getelementptr i8, ptr %148, i32 -24
  store i16 %226, ptr %227, align 4
  store i8 1, ptr %150, align 4
  br label %228

228:                                              ; preds = %225, %153
  %229 = phi i16 [ %149, %153 ], [ %226, %225 ]
  %230 = load ptr, ptr %148, align 4
  %231 = icmp eq ptr %230, %140
  br i1 %231, label %232, label %147

232:                                              ; preds = %228, %137
  %233 = phi i16 [ %116, %137 ], [ %229, %228 ]
  %234 = trunc i16 %233 to i8
  store i8 %234, ptr %84, align 1
  %235 = load i16, ptr %13, align 4
  %236 = icmp eq i16 %235, %138
  br i1 %236, label %237, label %255

237:                                              ; preds = %232
  %238 = and i16 %233, 255
  %239 = load i8, ptr %93, align 2
  %240 = sub i16 %238, %86
  %241 = icmp eq i8 %239, 3
  %242 = select i1 %241, i16 255, i16 63
  %243 = and i16 %242, %240
  %244 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %245 = load ptr, ptr %244, align 4
  %246 = zext i16 %243 to i32
  %247 = getelementptr %struct.dwc2_dma_desc, ptr %245, i32 %246
  %248 = load i32, ptr %247, align 1
  %249 = or i32 %248, 33554432
  store i32 %249, ptr %247, align 1
  %250 = load ptr, ptr %0, align 8
  %251 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %252 = load i32, ptr %251, align 8
  %253 = shl nuw nsw i32 %246, 3
  %254 = add i32 %252, %253
  tail call void @dma_sync_single_for_device(ptr noundef %250, i32 noundef %254, i32 noundef 8, i32 noundef 1) #8
  br label %255

255:                                              ; preds = %237, %232
  %256 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 9
  %257 = load i8, ptr %256, align 2
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  tail call fastcc void @dwc2_update_frame_list(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %260 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %261 = load i8, ptr %260, align 4
  %262 = icmp eq i8 %261, 1
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i8, ptr %93, align 2
  %265 = icmp eq i8 %264, 3
  %266 = select i1 %265, i16 256, i16 64
  br label %267

267:                                              ; preds = %263, %259
  %268 = phi i16 [ 64, %259 ], [ %266, %263 ]
  %269 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 21
  store i16 %268, ptr %269, align 2
  br label %271

270:                                              ; preds = %2
  unreachable

271:                                              ; preds = %267, %11, %10
  tail call void @dwc2_hc_start_transfer_ddma(ptr noundef %0, ptr noundef %4) #8
  br label %272

272:                                              ; preds = %271, %255
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_init_non_isoc_dma_desc(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %6 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 4
  %7 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 6
  %8 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %9 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 27
  %10 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 29
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  br label %14

14:                                               ; preds = %109, %2
  %15 = phi i32 [ 0, %2 ], [ %104, %109 ]
  %16 = phi ptr [ %5, %2 ], [ %17, %109 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -36
  %19 = icmp eq ptr %17, %5
  br i1 %19, label %115, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %17, i32 -8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %24, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %6, align 4
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %30, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  store i32 %35, ptr %7, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = getelementptr i8, ptr %17, i32 -15
  store i8 0, ptr %37, align 1
  br label %38

38:                                               ; preds = %100, %36
  %39 = phi i32 [ %15, %36 ], [ %104, %100 ]
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load ptr, ptr %8, align 4
  %43 = add nsw i32 %39, -1
  %44 = getelementptr %struct.dwc2_dma_desc, ptr %42, i32 %43
  %45 = load i32, ptr %44, align 1
  %46 = or i32 %45, -2147483648
  store i32 %46, ptr %44, align 1
  %47 = load ptr, ptr %0, align 8
  %48 = load i32, ptr %9, align 8
  %49 = shl i32 %43, 3
  %50 = add i32 %48, %49
  tail call void @dma_sync_single_for_device(ptr noundef %47, i32 noundef %50, i32 noundef 8, i32 noundef 1) #8
  br label %51

51:                                               ; preds = %41, %38
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr %struct.dwc2_dma_desc, ptr %52, i32 %39
  %54 = load i32, ptr %7, align 4
  %55 = load i16, ptr %10, align 4
  %56 = and i16 %55, 2047
  %57 = zext i16 %56 to i32
  %58 = sub nuw nsw i32 131072, %57
  %59 = tail call i32 @llvm.smin.i32(i32 %54, i32 %58) #8
  %60 = load i24, ptr %11, align 1
  %61 = and i24 %60, 2048
  %62 = icmp eq i24 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %51
  %64 = icmp slt i32 %59, 1
  %65 = icmp eq i16 %56, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %57, -1
  %69 = add nsw i32 %68, %59
  %70 = udiv i32 %69, %57
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %70, %67 ], [ 1, %63 ]
  %73 = mul nuw nsw i32 %72, %57
  br label %74

74:                                               ; preds = %71, %51
  %75 = phi i32 [ %73, %71 ], [ %59, %51 ]
  %76 = and i32 %75, 131071
  store i32 %76, ptr %53, align 1
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr i32, ptr %77, i32 %39
  store i32 %75, ptr %78, align 4
  %79 = load i8, ptr %13, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, ptr %18, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, ptr %53, align 1
  %86 = or i32 %85, 16777216
  store i32 %86, ptr %53, align 1
  br label %87

87:                                               ; preds = %84, %81, %74
  %88 = load i32, ptr %6, align 4
  %89 = getelementptr %struct.dwc2_dma_desc, ptr %52, i32 %39, i32 1
  store i32 %88, ptr %89, align 1
  %90 = load ptr, ptr %0, align 8
  %91 = load i32, ptr %9, align 8
  %92 = shl i32 %39, 3
  %93 = add i32 %91, %92
  tail call void @dma_sync_single_for_device(ptr noundef %90, i32 noundef %93, i32 noundef 8, i32 noundef 1) #8
  %94 = load i32, ptr %7, align 4
  %95 = icmp ult i32 %94, %75
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load i32, ptr %6, align 4
  %98 = add i32 %97, %75
  store i32 %98, ptr %6, align 4
  %99 = sub i32 %94, %75
  br label %100

100:                                              ; preds = %96, %87
  %101 = phi i32 [ %99, %96 ], [ 0, %87 ]
  store i32 %101, ptr %7, align 4
  %102 = load i8, ptr %37, align 1
  %103 = add i8 %102, 1
  store i8 %103, ptr %37, align 1
  %104 = add i32 %39, 1
  %105 = load i32, ptr %7, align 4
  %106 = icmp ne i32 %105, 0
  %107 = icmp ne i32 %104, 64
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %38, label %109

109:                                              ; preds = %100
  %110 = getelementptr i8, ptr %17, i32 -32
  store i8 1, ptr %110, align 4
  %111 = load i8, ptr %13, align 4
  %112 = icmp eq i8 %111, 0
  %113 = icmp eq i32 %104, 64
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %115, label %14

115:                                              ; preds = %109, %14
  %116 = phi i32 [ %104, %109 ], [ %15, %14 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %8, align 4
  %120 = add i32 %116, -1
  %121 = getelementptr %struct.dwc2_dma_desc, ptr %119, i32 %120
  %122 = load i32, ptr %121, align 1
  %123 = or i32 %122, -2046820352
  store i32 %123, ptr %121, align 1
  %124 = load ptr, ptr %0, align 8
  %125 = load i32, ptr %9, align 8
  %126 = shl i32 %120, 3
  %127 = add i32 %125, %126
  tail call void @dma_sync_single_for_device(ptr noundef %124, i32 noundef %127, i32 noundef 8, i32 noundef 1) #8
  %128 = icmp sgt i32 %116, 1
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = load ptr, ptr %8, align 4
  %131 = load i32, ptr %130, align 1
  %132 = or i32 %131, -2147483648
  store i32 %132, ptr %130, align 1
  %133 = load ptr, ptr %0, align 8
  %134 = load i32, ptr %9, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %133, i32 noundef %134, i32 noundef 8, i32 noundef 1) #8
  br label %135

135:                                              ; preds = %129, %118
  %136 = trunc i32 %116 to i16
  %137 = getelementptr inbounds %struct.dwc2_host_chan, ptr %4, i32 0, i32 21
  store i16 %136, ptr %137, align 2
  br label %138

138:                                              ; preds = %135, %115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_start_transfer_ddma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_update_frame_list(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef null) #7
  br label %96

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 24
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef null) #7
  br label %96

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 61
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef null) #7
  br label %96

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 3
  %23 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = add nuw nsw i32 %25, 7
  %27 = lshr i32 %26, 3
  %28 = select i1 %22, i32 %27, i32 %25
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, 63
  br label %37

37:                                               ; preds = %33, %19
  %38 = phi i16 [ %36, %33 ], [ 0, %19 ]
  %39 = icmp eq i32 %2, 0
  br label %40

40:                                               ; preds = %58, %37
  %41 = phi i16 [ %38, %37 ], [ %60, %58 ]
  %42 = load i8, ptr %9, align 4
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %43
  br i1 %39, label %51, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %14, align 4
  %47 = zext i16 %41 to i32
  %48 = getelementptr i32, ptr %46, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, ptr %48, align 4
  br label %58

51:                                               ; preds = %40
  %52 = xor i32 %44, -1
  %53 = load ptr, ptr %14, align 4
  %54 = zext i16 %41 to i32
  %55 = getelementptr i32, ptr %53, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %51, %45
  %59 = add i16 %41, %29
  %60 = and i16 %59, 63
  %61 = icmp eq i16 %60, %38
  br i1 %61, label %62, label %40

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 62
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 63
  %67 = load i32, ptr %66, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef 1) #8
  br i1 %39, label %96, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.dwc2_host_chan, ptr %9, i32 0, i32 20
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds %struct.dwc2_host_chan, ptr %9, i32 0, i32 1
  %71 = load i24, ptr %70, align 1
  %72 = and i24 %71, 61440
  %73 = icmp eq i24 %72, 12288
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load i16, ptr %23, align 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = zext i16 %75 to i32
  %79 = add nuw nsw i32 %78, 7
  %80 = udiv i32 %79, %78
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %83, %77
  %84 = phi i8 [ %89, %83 ], [ 0, %77 ]
  %85 = phi i32 [ %93, %83 ], [ 0, %77 ]
  %86 = phi i32 [ %92, %83 ], [ 1, %77 ]
  %87 = and i32 %86, 65535
  %88 = trunc i32 %86 to i8
  %89 = or i8 %84, %88
  store i8 %89, ptr %69, align 1
  %90 = load i16, ptr %23, align 4
  %91 = zext i16 %90 to i32
  %92 = shl i32 %87, %91
  %93 = add nuw nsw i32 %85, 1
  %94 = icmp eq i32 %93, %81
  br i1 %94, label %96, label %83

95:                                               ; preds = %74, %68
  store i8 -1, ptr %69, align 1
  br label %96

96:                                               ; preds = %95, %83, %77, %62, %17, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_complete_xfer_ddma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 1
  %8 = load i24, ptr %7, align 1
  %9 = and i24 %8, 196608
  %10 = icmp eq i24 %9, 65536
  br i1 %10, label %11, label %222

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  %14 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %190, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %23 = getelementptr i8, ptr %22, i32 -32
  store i8 0, ptr %23, align 4
  %24 = load ptr, ptr %22, align 4
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %190, label %21

26:                                               ; preds = %11
  switch i32 %3, label %63 [
    i32 11, label %27
    i32 9, label %27
  ]

27:                                               ; preds = %26, %26
  %28 = icmp eq i32 %3, 11
  %29 = select i1 %28, i32 -5, i32 -75
  %30 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %210, label %33

33:                                               ; preds = %57, %27
  %34 = phi ptr [ %36, %57 ], [ %31, %27 ]
  %35 = getelementptr i8, ptr %34, i32 -36
  %36 = load ptr, ptr %34, align 4
  %37 = getelementptr i8, ptr %34, i32 -8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %38, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %51, %44 ], [ %38, %40 ]
  %46 = phi i32 [ %50, %44 ], [ 0, %40 ]
  %47 = phi i16 [ %49, %44 ], [ 0, %40 ]
  %48 = getelementptr %struct.dwc2_hcd_urb, ptr %45, i32 0, i32 14, i32 %46, i32 3
  store i32 %29, ptr %48, align 4
  %49 = add i16 %47, 1
  %50 = zext i16 %49 to i32
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %51, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %50
  br i1 %54, label %44, label %55

55:                                               ; preds = %44, %40
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %35, i32 noundef %29) #8
  %56 = load ptr, ptr %34, align 4
  br label %57

57:                                               ; preds = %55, %33
  %58 = phi ptr [ %56, %55 ], [ %36, %33 ]
  %59 = getelementptr i8, ptr %34, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %58, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  tail call void @kfree(ptr noundef %35) #8
  %62 = icmp eq ptr %36, %30
  br i1 %62, label %190, label %33

63:                                               ; preds = %26
  %64 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %188, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 27
  %69 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 26
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 29
  %71 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 20
  %72 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 13
  %73 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  %74 = getelementptr i8, ptr %65, i32 -32
  %75 = load i8, ptr %74, align 4
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %188, label %81

77:                                               ; preds = %181
  %78 = getelementptr i8, ptr %84, i32 -32
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %188, label %81

81:                                               ; preds = %77, %67
  %82 = phi ptr [ %84, %77 ], [ %65, %67 ]
  %83 = getelementptr i8, ptr %82, i32 -36
  %84 = load ptr, ptr %82, align 4
  %85 = getelementptr i8, ptr %82, i32 -22
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr i8, ptr %82, i32 -8
  %88 = getelementptr i8, ptr %82, i32 -14
  %89 = getelementptr i8, ptr %82, i32 -28
  %90 = getelementptr i8, ptr %82, i32 4
  br label %91

91:                                               ; preds = %175, %81
  %92 = phi i16 [ %86, %81 ], [ %160, %175 ]
  %93 = load ptr, ptr %87, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %190, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %0, align 8
  %97 = load i32, ptr %68, align 8
  %98 = zext i16 %92 to i32
  %99 = shl nuw nsw i32 %98, 3
  %100 = add i32 %97, %99
  tail call void @dma_sync_single_for_cpu(ptr noundef %96, i32 noundef %100, i32 noundef 8, i32 noundef 2) #8
  %101 = load ptr, ptr %69, align 4
  %102 = getelementptr %struct.dwc2_dma_desc, ptr %101, i32 %98
  %103 = load ptr, ptr %87, align 4
  %104 = load i16, ptr %88, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr %struct.dwc2_hcd_urb, ptr %103, i32 0, i32 14, i32 %105
  %107 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %103, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %106, align 4
  %110 = add i32 %109, %108
  %111 = getelementptr %struct.dwc2_dma_desc, ptr %101, i32 %98, i32 1
  store i32 %110, ptr %111, align 1
  %112 = load i24, ptr %7, align 1
  %113 = and i24 %112, 2048
  %114 = icmp eq i24 %113, 0
  %115 = load i32, ptr %102, align 1
  %116 = and i32 %115, 4095
  %117 = select i1 %114, i32 0, i32 %116
  %118 = and i32 %115, 805306368
  %119 = icmp eq i32 %118, 268435456
  br i1 %119, label %120, label %125

120:                                              ; preds = %95
  %121 = load ptr, ptr %87, align 4
  %122 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %121, i32 0, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %120, %95
  %126 = phi i32 [ -71, %120 ], [ 0, %95 ]
  %127 = load ptr, ptr %70, align 8
  %128 = getelementptr i32, ptr %127, i32 %98
  %129 = load i32, ptr %128, align 4
  %130 = sub i32 %129, %117
  %131 = getelementptr %struct.dwc2_hcd_urb, ptr %103, i32 0, i32 14, i32 %105, i32 2
  store i32 %130, ptr %131, align 4
  %132 = getelementptr %struct.dwc2_hcd_urb, ptr %103, i32 0, i32 14, i32 %105, i32 3
  store i32 %126, ptr %132, align 4
  %133 = load i16, ptr %89, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %89, align 4
  %135 = zext i16 %134 to i32
  %136 = load ptr, ptr %87, align 4
  %137 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %136, i32 0, i32 10
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, %135
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %83, i32 noundef 0) #8
  %141 = load ptr, ptr %90, align 4
  %142 = load ptr, ptr %82, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %141, ptr %143, align 4
  store volatile ptr %142, ptr %141, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  tail call void @kfree(ptr noundef %83) #8
  %144 = load i32, ptr %14, align 4
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %190, label %146

146:                                              ; preds = %140, %125
  %147 = phi i32 [ 0, %125 ], [ 1, %140 ]
  %148 = load i16, ptr %71, align 4
  %149 = add i16 %148, -1
  store i16 %149, ptr %71, align 4
  %150 = load i32, ptr %102, align 1
  %151 = and i32 %150, 33554432
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 %147, i32 2
  %154 = load i16, ptr %72, align 4
  %155 = load i24, ptr %7, align 1
  %156 = add i16 %154, %92
  %157 = and i24 %155, 61440
  %158 = icmp eq i24 %157, 12288
  %159 = select i1 %158, i16 255, i16 63
  %160 = and i16 %159, %156
  switch i32 %153, label %161 [
    i32 0, label %175
    i32 1, label %179
  ]

161:                                              ; preds = %146
  %162 = icmp ugt i16 %154, 31
  %163 = trunc i16 %160 to i8
  br i1 %162, label %186, label %164

164:                                              ; preds = %161
  store i8 %163, ptr %12, align 2
  %165 = load i16, ptr %73, align 4
  %166 = and i16 %165, 63
  %167 = load ptr, ptr %64, align 8
  %168 = getelementptr i8, ptr %167, i32 -24
  %169 = load i16, ptr %168, align 4
  %170 = sub i16 %165, %169
  %171 = and i16 %170, 32
  %172 = icmp ne i16 %166, %169
  %173 = icmp eq i16 %171, 0
  %174 = and i1 %172, %173
  br i1 %174, label %181, label %184

175:                                              ; preds = %146
  %176 = load i8, ptr %12, align 2
  %177 = zext i8 %176 to i16
  %178 = icmp eq i16 %160, %177
  br i1 %178, label %179, label %91

179:                                              ; preds = %175, %146
  %180 = trunc i16 %160 to i8
  br label %181

181:                                              ; preds = %179, %164
  %182 = phi i8 [ %180, %179 ], [ %163, %164 ]
  %183 = icmp eq ptr %84, %64
  br i1 %183, label %188, label %77

184:                                              ; preds = %164
  %185 = trunc i16 %160 to i8
  br label %188

186:                                              ; preds = %161
  %187 = trunc i16 %160 to i8
  br label %188

188:                                              ; preds = %186, %184, %181, %77, %67, %63
  %189 = phi i8 [ %13, %63 ], [ %13, %67 ], [ %185, %184 ], [ %187, %186 ], [ %182, %77 ], [ %182, %181 ]
  store i8 %189, ptr %12, align 2
  br label %190

190:                                              ; preds = %188, %140, %91, %57, %21, %17
  %191 = icmp eq i32 %3, 1
  %192 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  br i1 %191, label %193, label %196

193:                                              ; preds = %190
  %194 = load volatile ptr, ptr %192, align 4
  %195 = icmp eq ptr %194, %192
  br i1 %195, label %209, label %211

196:                                              ; preds = %190
  %197 = load ptr, ptr %192, align 8
  %198 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  %199 = icmp eq ptr %197, %198
  br i1 %199, label %210, label %200

200:                                              ; preds = %200, %196
  %201 = phi ptr [ %203, %200 ], [ %197, %196 ]
  %202 = getelementptr i8, ptr %201, i32 -36
  %203 = load ptr, ptr %201, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %202, i32 noundef -104) #8
  %204 = getelementptr i8, ptr %201, i32 4
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %201, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %201, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %204, align 4
  tail call void @kfree(ptr noundef %202) #8
  %208 = icmp eq ptr %203, %198
  br i1 %208, label %210, label %200

209:                                              ; preds = %193
  tail call void @dwc2_hc_halt(ptr noundef %0, ptr noundef %1, i32 noundef 1) #8
  br label %210

210:                                              ; preds = %209, %200, %196, %27
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %0, ptr noundef %6)
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %6) #8
  br label %395

211:                                              ; preds = %193
  %212 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 25
  %213 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42
  %214 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 25, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %212, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  store ptr %215, ptr %217, align 4
  store volatile ptr %216, ptr %215, align 4
  %218 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 42, i32 1
  %219 = load ptr, ptr %218, align 4
  store ptr %212, ptr %218, align 4
  store ptr %213, ptr %212, align 4
  store ptr %219, ptr %214, align 4
  store volatile ptr %212, ptr %219, align 4
  %220 = load i32, ptr %14, align 4
  %221 = icmp eq i32 %220, 0
  br label %395

222:                                              ; preds = %4
  %223 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 22
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 13
  %226 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 23
  br i1 %225, label %227, label %235

227:                                              ; preds = %222
  %228 = load ptr, ptr %226, align 4
  %229 = icmp eq ptr %228, %226
  br i1 %229, label %390, label %230

230:                                              ; preds = %230, %227
  %231 = phi ptr [ %233, %230 ], [ %228, %227 ]
  %232 = getelementptr i8, ptr %231, i32 -32
  store i8 0, ptr %232, align 4
  %233 = load ptr, ptr %231, align 4
  %234 = icmp eq ptr %233, %226
  br i1 %234, label %390, label %230

235:                                              ; preds = %222
  %236 = load ptr, ptr %226, align 8
  %237 = icmp eq ptr %236, %226
  br i1 %237, label %372, label %238

238:                                              ; preds = %235
  %239 = icmp eq i32 %3, 11
  br label %243

240:                                              ; preds = %368, %243
  %241 = phi i32 [ %245, %243 ], [ %255, %368 ]
  %242 = icmp eq ptr %246, %226
  br i1 %242, label %372, label %243

243:                                              ; preds = %240, %238
  %244 = phi ptr [ %236, %238 ], [ %246, %240 ]
  %245 = phi i32 [ 0, %238 ], [ %241, %240 ]
  %246 = load ptr, ptr %244, align 4
  %247 = getelementptr i8, ptr %244, i32 -36
  %248 = getelementptr i8, ptr %244, i32 -15
  %249 = load i8, ptr %248, align 1
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %240, label %251

251:                                              ; preds = %243
  %252 = zext i8 %249 to i32
  %253 = getelementptr i8, ptr %244, i32 -8
  %254 = getelementptr i8, ptr %244, i32 4
  %255 = add i32 %245, %252
  br label %256

256:                                              ; preds = %368, %251
  %257 = phi i32 [ %245, %251 ], [ %370, %368 ]
  %258 = phi i32 [ 0, %251 ], [ %369, %368 ]
  %259 = load ptr, ptr %5, align 4
  %260 = load ptr, ptr %253, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %372, label %262

262:                                              ; preds = %256
  %263 = load ptr, ptr %0, align 8
  %264 = getelementptr inbounds %struct.dwc2_qh, ptr %259, i32 0, i32 27
  %265 = load i32, ptr %264, align 8
  %266 = shl i32 %257, 3
  %267 = add i32 %265, %266
  tail call void @dma_sync_single_for_cpu(ptr noundef %263, i32 noundef %267, i32 noundef 8, i32 noundef 2) #8
  %268 = getelementptr inbounds %struct.dwc2_qh, ptr %259, i32 0, i32 26
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr %struct.dwc2_dma_desc, ptr %269, i32 %257
  %271 = getelementptr inbounds %struct.dwc2_qh, ptr %259, i32 0, i32 29
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr i32, ptr %272, i32 %257
  %274 = load i32, ptr %273, align 4
  %275 = load ptr, ptr %253, align 4
  %276 = load i24, ptr %7, align 1
  %277 = and i24 %276, 2048
  %278 = icmp eq i24 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %262
  %280 = load i32, ptr %270, align 1
  %281 = and i32 %280, 65535
  br label %282

282:                                              ; preds = %279, %262
  %283 = phi i32 [ %281, %279 ], [ 0, %262 ]
  br i1 %239, label %284, label %287

284:                                              ; preds = %282
  %285 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.6) #7
  %286 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 8
  store i32 -5, ptr %286, align 4
  br label %360

287:                                              ; preds = %282
  %288 = load i32, ptr %270, align 1
  %289 = and i32 %288, 805306368
  %290 = icmp eq i32 %289, 268435456
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  switch i32 %3, label %300 [
    i32 6, label %292
    i32 9, label %294
    i32 7, label %297
  ]

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 8
  store i32 -32, ptr %293, align 4
  br label %360

294:                                              ; preds = %291
  %295 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.7) #7
  %296 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 8
  store i32 -75, ptr %296, align 4
  br label %360

297:                                              ; preds = %291
  %298 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.8) #7
  %299 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 8
  store i32 -71, ptr %299, align 4
  br label %360

300:                                              ; preds = %291
  %301 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %301, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dwc2_update_non_isoc_urb_state_ddma, i32 noundef %3) #7
  br label %360

302:                                              ; preds = %287
  %303 = icmp sgt i32 %288, -1
  br i1 %303, label %304, label %329

304:                                              ; preds = %302
  %305 = and i24 %276, 196608
  %306 = icmp eq i24 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %304
  %308 = load i32, ptr %247, align 4
  switch i32 %308, label %329 [
    i32 1, label %309
    i32 2, label %331
  ]

309:                                              ; preds = %307
  %310 = sub i32 %274, %283
  %311 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 7
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, %310
  store i32 %313, ptr %311, align 4
  %314 = icmp eq i32 %283, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 6
  %317 = load i32, ptr %316, align 4
  %318 = icmp ult i32 %313, %317
  br i1 %318, label %329, label %333

319:                                              ; preds = %304
  %320 = sub i32 %274, %283
  %321 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 7
  %322 = load i32, ptr %321, align 4
  %323 = add i32 %322, %320
  store i32 %323, ptr %321, align 4
  %324 = icmp eq i32 %283, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 6
  %327 = load i32, ptr %326, align 4
  %328 = icmp ult i32 %323, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %325, %315, %307, %302
  %330 = icmp eq i32 %258, 0
  br i1 %330, label %338, label %333

331:                                              ; preds = %325, %319, %307
  %332 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %275, i32 0, i32 8
  store i32 0, ptr %332, align 4
  br label %333

333:                                              ; preds = %331, %329, %315, %309
  %334 = phi i32 [ %258, %329 ], [ 1, %331 ], [ 1, %315 ], [ 1, %309 ]
  %335 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %260, i32 0, i32 8
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, -115
  br i1 %337, label %338, label %360

338:                                              ; preds = %333, %329
  %339 = phi i32 [ 0, %329 ], [ %334, %333 ]
  %340 = phi i1 [ true, %329 ], [ false, %333 ]
  %341 = getelementptr inbounds %struct.dwc2_qh, ptr %259, i32 0, i32 1
  %342 = load i8, ptr %341, align 4
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %368

344:                                              ; preds = %338
  %345 = load i32, ptr %247, align 4
  switch i32 %345, label %368 [
    i32 0, label %346
    i32 1, label %352
  ]

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %260, i32 0, i32 6
  %348 = load i32, ptr %347, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  store i32 1, ptr %247, align 4
  br label %368

351:                                              ; preds = %346
  store i32 2, ptr %247, align 4
  br label %368

352:                                              ; preds = %344
  br i1 %340, label %354, label %353

353:                                              ; preds = %352
  store i32 2, ptr %247, align 4
  br label %368

354:                                              ; preds = %352
  %355 = add i32 %257, 1
  %356 = load i8, ptr %248, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp eq i32 %355, %357
  br i1 %358, label %359, label %368

359:                                              ; preds = %354
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %247) #8
  br label %368

360:                                              ; preds = %333, %300, %297, %294, %292, %284
  %361 = phi i32 [ %258, %284 ], [ %258, %300 ], [ %258, %297 ], [ %258, %294 ], [ %258, %292 ], [ %334, %333 ]
  %362 = phi i1 [ false, %284 ], [ false, %300 ], [ false, %297 ], [ false, %294 ], [ false, %292 ], [ true, %333 ]
  %363 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %260, i32 0, i32 8
  %364 = load i32, ptr %363, align 4
  tail call void @dwc2_host_complete(ptr noundef %0, ptr noundef %247, i32 noundef %364) #8
  %365 = load ptr, ptr %254, align 4
  %366 = load ptr, ptr %244, align 4
  %367 = getelementptr inbounds %struct.list_head, ptr %366, i32 0, i32 1
  store ptr %365, ptr %367, align 4
  store volatile ptr %366, ptr %365, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %244, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %254, align 4
  tail call void @kfree(ptr noundef %247) #8
  br i1 %362, label %368, label %372

368:                                              ; preds = %360, %359, %354, %353, %351, %350, %344, %338
  %369 = phi i32 [ %361, %360 ], [ %339, %351 ], [ %339, %350 ], [ %339, %354 ], [ %339, %359 ], [ %339, %353 ], [ %339, %344 ], [ %339, %338 ]
  %370 = add i32 %257, 1
  %371 = icmp eq i32 %370, %255
  br i1 %371, label %240, label %256

372:                                              ; preds = %360, %256, %240, %235
  %373 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 1
  %374 = load i8, ptr %373, align 4
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %372
  %377 = icmp eq i32 %3, 6
  br i1 %377, label %378, label %380

378:                                              ; preds = %376
  %379 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 6
  store i8 0, ptr %379, align 1
  br label %390

380:                                              ; preds = %376
  tail call void @dwc2_hcd_save_data_toggle(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) #8
  br label %381

381:                                              ; preds = %380, %372
  %382 = icmp eq i32 %3, 1
  br i1 %382, label %383, label %390

383:                                              ; preds = %381
  %384 = getelementptr inbounds %struct.dwc2_host_chan, ptr %1, i32 0, i32 23
  %385 = load i32, ptr %384, align 4
  %386 = and i32 %385, 64
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.dwc2_qh, ptr %6, i32 0, i32 7
  store i8 1, ptr %389, align 4
  br label %390

390:                                              ; preds = %388, %383, %381, %378, %230, %227
  tail call fastcc void @dwc2_release_channel_ddma(ptr noundef %0, ptr noundef %6)
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %6) #8
  %391 = load volatile ptr, ptr %226, align 4
  %392 = icmp eq ptr %391, %226
  br i1 %392, label %395, label %393

393:                                              ; preds = %390
  %394 = tail call i32 @dwc2_hcd_qh_add(ptr noundef %0, ptr noundef %6) #8
  br label %395

395:                                              ; preds = %393, %390, %211, %210
  %396 = phi i1 [ false, %390 ], [ false, %393 ], [ false, %210 ], [ %221, %211 ]
  %397 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %0) #8
  %398 = icmp ne i32 %397, 0
  %399 = or i1 %396, %398
  br i1 %399, label %400, label %408

400:                                              ; preds = %395
  br i1 %396, label %401, label %406

401:                                              ; preds = %400
  %402 = icmp eq i32 %397, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %401
  %404 = icmp eq i32 %397, 2
  %405 = select i1 %404, i32 3, i32 %397
  br label %406

406:                                              ; preds = %403, %401, %400
  %407 = phi i32 [ %405, %403 ], [ %397, %400 ], [ 1, %401 ]
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %0, i32 noundef %407) #8
  br label %408

408:                                              ; preds = %406, %395
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_halt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_qh_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hc_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_save_data_toggle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3495629}
!10 = !{i64 2154478389}
!11 = !{i8 0, i8 2}
!12 = !{i64 3495211}
