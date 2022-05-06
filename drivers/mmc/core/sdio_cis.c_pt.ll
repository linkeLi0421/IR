; ModuleID = '/llk/IR/drivers/mmc/core/sdio_cis.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio_cis.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cis_tpl = type { i8, i8, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [4 x i8] c"CIS\00", align 1
@cis_tpl_list = internal unnamed_addr constant [5 x %struct.cis_tpl] [%struct.cis_tpl { i8 21, i8 3, ptr @cistpl_vers_1 }, %struct.cis_tpl { i8 32, i8 4, ptr @cistpl_manfid }, %struct.cis_tpl { i8 33, i8 2, ptr null }, %struct.cis_tpl { i8 34, i8 0, ptr @cistpl_funce }, %struct.cis_tpl { i8 -111, i8 2, ptr null }], align 4
@sdio_read_cis._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.sdio_read_cis = private unnamed_addr constant [14 x i8] c"sdio_read_cis\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014%s: queuing unknown CIS tuple 0x%02x [%*ph] (%u bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%s: bad %s tuple 0x%02x (%u bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CISTPL_FUNCE\00", align 1
@cis_tpl_funce_list = internal unnamed_addr constant [3 x %struct.cis_tpl] [%struct.cis_tpl { i8 0, i8 4, ptr @cistpl_funce_common }, %struct.cis_tpl { i8 1, i8 0, ptr @cistpl_funce_func }, %struct.cis_tpl { i8 4, i8 8, ptr null }], align 4
@speed_val = internal unnamed_addr constant [16 x i8] c"\00\0A\0C\0D\0F\14\19\1E#(-27<FP", align 1
@speed_unit = internal unnamed_addr constant [8 x i32] [i32 10000, i32 100000, i32 1000000, i32 10000000, i32 0, i32 0, i32 0, i32 0], align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"\014%s: card has broken SDIO 1.1 CIS, forcing SDIO 1.0\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_read_common_cis(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @sdio_read_cis(ptr noundef %0, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdio_read_cis(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  br i1 %6, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %7, align 4
  %10 = shl i32 %9, 8
  %11 = and i32 %10, 65280
  %12 = or i32 %11, 9
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ 9, %2 ]
  %15 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %14, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %16 = icmp eq i32 %15, 0
  %17 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br i1 %16, label %18, label %184

18:                                               ; preds = %13
  %19 = zext i8 %17 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  br i1 %6, label %25, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %7, align 4
  %22 = shl i32 %21, 8
  %23 = and i32 %22, 65280
  %24 = or i32 %23, 10
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %24, %20 ], [ 10, %18 ]
  %27 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %26, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %28 = icmp eq i32 %27, 0
  %29 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br i1 %28, label %30, label %184

30:                                               ; preds = %25
  %31 = zext i8 %29 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or i32 %32, %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  br i1 %6, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = shl i32 %35, 8
  %37 = and i32 %36, 65280
  %38 = or i32 %37, 11
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %38, %34 ], [ 11, %30 ]
  %41 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %40, i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %42 = icmp eq i32 %41, 0
  %43 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br i1 %42, label %44, label %184

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 16
  %46 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 37
  %47 = select i1 %6, ptr %46, ptr %45
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %184

50:                                               ; preds = %44
  %51 = zext i8 %43 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %33
  br label %54

54:                                               ; preds = %174, %50
  %55 = phi ptr [ %175, %174 ], [ %47, %50 ]
  %56 = phi i32 [ %176, %174 ], [ %53, %50 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %57, 1000
  %59 = add i32 %56, 1
  %60 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %56, i8 noundef zeroext 0, ptr noundef nonnull %4) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %170

62:                                               ; preds = %54
  %63 = load i8, ptr %4, align 1
  switch i8 %63, label %64 [
    i8 -1, label %170
    i8 0, label %174
  ]

64:                                               ; preds = %62
  %65 = add i32 %56, 2
  %66 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %59, i8 noundef zeroext 0, ptr noundef nonnull %5) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %170

68:                                               ; preds = %64
  %69 = load i8, ptr %5, align 1
  %70 = icmp eq i8 %69, -1
  br i1 %70, label %170, label %71

71:                                               ; preds = %68
  %72 = zext i8 %69 to i32
  %73 = add nuw nsw i32 %72, 8
  %74 = call noalias align 64 ptr @__kmalloc(i32 noundef %73, i32 noundef 3264) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %173, label %76

76:                                               ; preds = %71
  %77 = load i8, ptr %5, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %91, label %84

79:                                               ; preds = %84
  %80 = add nuw nsw i32 %85, 1
  %81 = load i8, ptr %5, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79, %76
  %85 = phi i32 [ %80, %79 ], [ 0, %76 ]
  %86 = add i32 %85, %65
  %87 = getelementptr %struct.sdio_func_tuple, ptr %74, i32 0, i32 3, i32 %85
  %88 = call i32 @mmc_io_rw_direct(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %86, i8 noundef zeroext 0, ptr noundef %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %79, label %90

90:                                               ; preds = %84
  call void @kfree(ptr noundef nonnull %74) #8
  br label %170

91:                                               ; preds = %79, %76
  %92 = phi i8 [ 0, %76 ], [ %81, %79 ]
  %93 = load i8, ptr %4, align 1
  %94 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 3
  %95 = zext i8 %92 to i32
  switch i8 %93, label %127 [
    i8 21, label %100
    i8 32, label %96
    i8 33, label %97
    i8 34, label %98
    i8 -111, label %99
  ]

96:                                               ; preds = %91
  br label %100

97:                                               ; preds = %91
  br label %100

98:                                               ; preds = %91
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %98, %97, %96, %91
  %101 = phi ptr [ @cis_tpl_list, %91 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 1), %96 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 2), %97 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 3), %98 ], [ getelementptr inbounds ([5 x %struct.cis_tpl], ptr @cis_tpl_list, i32 0, i32 4), %99 ]
  %102 = getelementptr inbounds %struct.cis_tpl, ptr %101, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = icmp ugt i8 %103, %92
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.cis_tpl, ptr %101, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  store ptr null, ptr %74, align 64
  %110 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 1
  store i8 %93, ptr %110, align 4
  %111 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 2
  store i8 %92, ptr %111, align 1
  store ptr %74, ptr %55, align 4
  br label %164

112:                                              ; preds = %105
  %113 = call i32 %107(ptr noundef %0, ptr noundef %1, ptr noundef %94, i32 noundef %95) #8
  switch i32 %113, label %114 [
    i32 -2, label %130
    i32 -84, label %130
    i32 0, label %130
  ]

114:                                              ; preds = %112, %100
  %115 = phi i32 [ %113, %112 ], [ -22, %100 ]
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 1, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi ptr [ %122, %120 ], [ %118, %114 ]
  %125 = zext i8 %93 to i32
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %124, ptr noundef nonnull @.str, i32 noundef %125, i32 noundef %95) #10
  br label %130

127:                                              ; preds = %91
  store ptr null, ptr %74, align 64
  %128 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 1
  store i8 %93, ptr %128, align 4
  %129 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 2
  store i8 %92, ptr %129, align 1
  store ptr %74, ptr %55, align 4
  br label %138

130:                                              ; preds = %123, %112, %112, %112
  %131 = phi i32 [ %115, %123 ], [ %113, %112 ], [ %113, %112 ], [ %113, %112 ]
  switch i32 %131, label %163 [
    i32 -2, label %132
    i32 -84, label %132
  ]

132:                                              ; preds = %130, %130
  %133 = icmp eq i32 %131, -2
  store ptr null, ptr %74, align 64
  %134 = load i8, ptr %4, align 1
  %135 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 1
  store i8 %134, ptr %135, align 4
  %136 = load i8, ptr %5, align 1
  %137 = getelementptr inbounds %struct.sdio_func_tuple, ptr %74, i32 0, i32 2
  store i8 %136, ptr %137, align 1
  store ptr %74, ptr %55, align 4
  br i1 %133, label %138, label %164

138:                                              ; preds = %132, %127
  %139 = phi i8 [ %93, %127 ], [ %134, %132 ]
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = sub i32 %58, %140
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %170, label %143

143:                                              ; preds = %138
  %144 = icmp slt i8 %139, -112
  br i1 %144, label %164, label %145

145:                                              ; preds = %143
  %146 = call i32 @___ratelimit(ptr noundef nonnull @sdio_read_cis._rs, ptr noundef nonnull @__func__.sdio_read_cis) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %0, align 8
  %150 = getelementptr inbounds %struct.mmc_host, ptr %149, i32 0, i32 1, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.mmc_host, ptr %149, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = phi ptr [ %155, %153 ], [ %151, %148 ]
  %158 = load i8, ptr %4, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8, ptr %5, align 1
  %161 = zext i8 %160 to i32
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %157, i32 noundef %159, i32 noundef %161, ptr noundef %94, i32 noundef %161) #10
  br label %164

163:                                              ; preds = %130
  call void @kfree(ptr noundef nonnull %74) #8
  br label %164

164:                                              ; preds = %163, %156, %145, %143, %132, %109
  %165 = phi ptr [ %55, %163 ], [ %74, %143 ], [ %74, %156 ], [ %74, %145 ], [ %74, %132 ], [ %74, %109 ]
  %166 = phi i32 [ %131, %163 ], [ 0, %143 ], [ 0, %156 ], [ 0, %145 ], [ 0, %132 ], [ 0, %109 ]
  %167 = load i8, ptr %5, align 1
  %168 = zext i8 %167 to i32
  %169 = add i32 %65, %168
  br label %174

170:                                              ; preds = %138, %90, %68, %64, %62, %54
  %171 = phi ptr [ %55, %90 ], [ %55, %54 ], [ %55, %62 ], [ %55, %64 ], [ %55, %68 ], [ %74, %138 ]
  %172 = phi i32 [ %88, %90 ], [ %60, %54 ], [ 0, %62 ], [ %66, %64 ], [ 0, %68 ], [ -2, %138 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %179

173:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %184

174:                                              ; preds = %164, %62
  %175 = phi ptr [ %165, %164 ], [ %55, %62 ]
  %176 = phi i32 [ %169, %164 ], [ %59, %62 ]
  %177 = phi i32 [ %166, %164 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %54, label %179

179:                                              ; preds = %174, %170
  %180 = phi i32 [ %172, %170 ], [ %177, %174 ]
  %181 = phi ptr [ %171, %170 ], [ %175, %174 ]
  br i1 %6, label %184, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %46, align 4
  store ptr %183, ptr %181, align 4
  br label %184

184:                                              ; preds = %182, %179, %173, %44, %39, %25, %13
  %185 = phi i32 [ -12, %173 ], [ -22, %44 ], [ %180, %182 ], [ %180, %179 ], [ %15, %13 ], [ %27, %25 ], [ %41, %39 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_free_common_cis(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdio_read_func_cis(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call fastcc i32 @sdio_read_cis(ptr noundef %2, ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 1
  %8 = tail call ptr @get_device(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 30
  %15 = load i16, ptr %14, align 4
  store i16 %15, ptr %9, align 2
  %16 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 30, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 6
  store i16 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %12, %5, %1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdio_free_func_cis(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %6) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %11, %5, %1
  store ptr null, ptr %2, align 8
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.mmc_card, ptr %15, i32 0, i32 1
  tail call void @put_device(ptr noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cistpl_vers_1(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp ult i32 %3, 2
  br i1 %5, label %61, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1
  %8 = getelementptr i8, ptr %2, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %2, i32 2
  %11 = add i32 %3, -2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %20, %6
  %14 = phi i32 [ %21, %20 ], [ 0, %6 ]
  %15 = phi i32 [ %22, %20 ], [ 0, %6 ]
  %16 = getelementptr i8, ptr %10, i32 %15
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %20 [
    i8 -1, label %24
    i8 0, label %18
  ]

18:                                               ; preds = %13
  %19 = add i32 %14, 1
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ %14, %13 ]
  %22 = add nuw i32 %15, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %24, label %13

24:                                               ; preds = %20, %13
  %25 = phi i32 [ %11, %20 ], [ %15, %13 ]
  %26 = phi i32 [ %21, %20 ], [ %14, %13 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %24
  %29 = shl i32 %26, 2
  %30 = add i32 %29, %25
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %61, label %33

33:                                               ; preds = %28
  %34 = getelementptr ptr, ptr %31, i32 %26
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %43, %35 ], [ %34, %33 ]
  %37 = phi i32 [ %47, %35 ], [ 0, %33 ]
  %38 = phi ptr [ %46, %35 ], [ %10, %33 ]
  %39 = getelementptr ptr, ptr %31, i32 %37
  store ptr %36, ptr %39, align 4
  %40 = tail call ptr @strcpy(ptr noundef %36, ptr noundef %38)
  %41 = tail call i32 @strlen(ptr noundef %36)
  %42 = add i32 %41, 1
  %43 = getelementptr i8, ptr %36, i32 %42
  %44 = tail call i32 @strlen(ptr noundef %38)
  %45 = add i32 %44, 1
  %46 = getelementptr i8, ptr %38, i32 %45
  %47 = add nuw i32 %37, 1
  %48 = icmp eq i32 %47, %26
  br i1 %48, label %49, label %35

49:                                               ; preds = %35
  %50 = icmp eq ptr %1, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 12
  store i8 %7, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 13
  store i8 %9, ptr %53, align 1
  %54 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 14
  store i32 %26, ptr %54, align 8
  %55 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 15
  store ptr %31, ptr %55, align 4
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 33
  store i8 %7, ptr %57, align 8
  %58 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 34
  store i8 %9, ptr %58, align 1
  %59 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 35
  store i32 %26, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 36
  store ptr %31, ptr %60, align 8
  br label %61

61:                                               ; preds = %56, %51, %28, %24, %6, %4
  %62 = phi i32 [ 0, %4 ], [ 0, %24 ], [ -12, %28 ], [ 0, %56 ], [ 0, %51 ], [ 0, %6 ]
  ret i32 %62
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cistpl_manfid(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i16
  %7 = getelementptr i8, ptr %2, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = or i16 %10, %6
  %12 = getelementptr i8, ptr %2, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %2, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %18, %14
  %20 = icmp eq ptr %1, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 5
  store i16 %11, ptr %22, align 2
  %23 = trunc i32 %19 to i16
  %24 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 6
  store i16 %23, ptr %24, align 4
  br label %29

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30
  store i16 %11, ptr %26, align 4
  %27 = trunc i32 %19 to i16
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 1
  store i16 %27, ptr %28, align 2
  br label %29

29:                                               ; preds = %25, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cistpl_funce(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1
  switch i8 %7, label %35 [
    i8 0, label %10
    i8 1, label %8
    i8 4, label %9
  ]

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8, %6
  %11 = phi ptr [ @cis_tpl_funce_list, %6 ], [ getelementptr inbounds ([3 x %struct.cis_tpl], ptr @cis_tpl_funce_list, i32 0, i32 1), %8 ], [ getelementptr inbounds ([3 x %struct.cis_tpl], ptr @cis_tpl_funce_list, i32 0, i32 2), %9 ]
  %12 = getelementptr inbounds %struct.cis_tpl, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %14, %3
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cis_tpl, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #8
  switch i32 %21, label %22 [
    i32 -2, label %35
    i32 -84, label %35
    i32 0, label %35
  ]

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ -22, %10 ]
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %26, %22 ]
  %33 = zext i8 %7 to i32
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %32, ptr noundef nonnull @.str.3, i32 noundef %33, i32 noundef %3) #10
  br label %35

35:                                               ; preds = %31, %20, %20, %20, %16, %6, %4
  %36 = phi i32 [ -22, %4 ], [ %23, %31 ], [ %21, %20 ], [ %21, %20 ], [ %21, %20 ], [ -84, %16 ], [ -2, %6 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cistpl_funce_common(ptr nocapture noundef writeonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %2, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = getelementptr i8, ptr %2, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  %13 = shl nuw i16 %12, 8
  %14 = or i16 %13, %9
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 2
  store i16 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %2, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 15
  %21 = getelementptr [16 x i8], ptr @speed_val, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %18, 7
  %25 = getelementptr [8 x i32], ptr @speed_unit, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %23
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 3
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %6, %4
  %30 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cistpl_funce_func(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 29
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %3, 28
  %11 = icmp eq i32 %9, 1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %33

13:                                               ; preds = %6
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ %16, %13 ]
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %22) #10
  %24 = getelementptr i8, ptr %2, i32 12
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %2, i32 13
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 7
  store i32 %31, ptr %32, align 8
  br label %57

33:                                               ; preds = %6
  %34 = icmp eq i32 %9, 0
  %35 = select i1 %34, i32 28, i32 42
  %36 = icmp ugt i32 %35, %3
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %2, i32 12
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr i8, ptr %2, i32 13
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %44, %40
  %46 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 7
  store i32 %45, ptr %46, align 8
  br i1 %34, label %57, label %47

47:                                               ; preds = %37
  %48 = getelementptr i8, ptr %2, i32 28
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %2, i32 29
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %54, %50
  %56 = mul nuw nsw i32 %55, 10
  br label %59

57:                                               ; preds = %37, %21
  %58 = tail call i32 @jiffies_to_msecs(i32 noundef 100) #8
  br label %59

59:                                               ; preds = %57, %47
  %60 = phi i32 [ %56, %47 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 9
  store i32 %60, ptr %61, align 8
  br label %62

62:                                               ; preds = %59, %33, %4
  %63 = phi i32 [ -22, %4 ], [ -22, %33 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
