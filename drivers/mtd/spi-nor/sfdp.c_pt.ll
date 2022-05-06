; ModuleID = '/llk/IR/drivers/mtd/spi-nor/sfdp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/sfdp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sfdp_bfpt_read = type { i32, i32, i32, i32, i32, i32 }
%struct.sfdp_bfpt = type { [20 x i32] }
%struct.sfdp_header = type { i32, i8, i8, i8, i8, %struct.sfdp_parameter_header }
%struct.sfdp_parameter_header = type { i8, i8, i8, i8, [3 x i8], i8 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.70, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.70 = type { ptr, ptr }
%struct.sfdp = type { i32, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to parse optional parameter table: %04x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sfdp_bfpt_reads = internal unnamed_addr constant [6 x %struct.sfdp_bfpt_read] [%struct.sfdp_bfpt_read { i32 8, i32 0, i32 65536, i32 3, i32 0, i32 65794 }, %struct.sfdp_bfpt_read { i32 16, i32 0, i32 1048576, i32 3, i32 16, i32 66050 }, %struct.sfdp_bfpt_read { i32 32, i32 4, i32 1, i32 5, i32 16, i32 131586 }, %struct.sfdp_bfpt_read { i32 128, i32 0, i32 4194304, i32 2, i32 16, i32 65796 }, %struct.sfdp_bfpt_read { i32 256, i32 0, i32 2097152, i32 2, i32 0, i32 66564 }, %struct.sfdp_bfpt_read { i32 512, i32 4, i32 16, i32 6, i32 16, i32 263172 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_parse_sfdp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sfdp_bfpt, align 4
  %3 = alloca %struct.sfdp_header, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1254, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  %15 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  br label %16

16:                                               ; preds = %26, %9
  %17 = phi ptr [ %27, %26 ], [ %7, %9 ]
  %18 = phi i32 [ %29, %26 ], [ 16, %9 ]
  %19 = phi i32 [ %28, %26 ], [ 0, %9 ]
  %20 = zext i32 %19 to i64
  %21 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %20, i32 noundef %18, ptr noundef %17) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = add nsw i32 %21, -1
  %25 = icmp ult i32 %24, %18
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %17, i32 %21
  %28 = add i32 %21, %19
  %29 = sub i32 %18, %21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %16

31:                                               ; preds = %26, %23, %16
  %32 = phi i32 [ 0, %26 ], [ -5, %23 ], [ %21, %16 ]
  store i8 %11, ptr %10, align 2
  store i8 %13, ptr %12, align 4
  store i8 %15, ptr %14, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false) #10
  tail call void @kfree(ptr noundef nonnull %7) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %1254, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4
  %36 = icmp ne i32 %35, 1346651731
  %37 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = icmp ne i8 %38, 1
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %1254, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5
  %43 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = load i8, ptr %42, align 4
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %49, 65280
  %51 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 1
  %54 = select i1 %50, i1 %53, i1 false
  br i1 %54, label %55, label %1254

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 4
  %57 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 4, i32 2
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 4, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %64, %60
  %66 = load i8, ptr %56, align 4
  %67 = zext i8 %66 to i32
  %68 = or i32 %65, %67
  %69 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 5, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 2
  %73 = add nuw nsw i32 %68, %72
  %74 = getelementptr inbounds %struct.sfdp_header, ptr %3, i32 0, i32 3
  %75 = load i8, ptr %74, align 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %128, label %77

77:                                               ; preds = %55
  %78 = zext i8 %75 to i32
  %79 = shl nuw nsw i32 %78, 3
  %80 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %79, i32 noundef 3264) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %1254, label %82

82:                                               ; preds = %77
  %83 = load i8, ptr %10, align 2
  %84 = load i8, ptr %12, align 4
  %85 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  br label %86

86:                                               ; preds = %96, %82
  %87 = phi ptr [ %97, %96 ], [ %80, %82 ]
  %88 = phi i32 [ %99, %96 ], [ %79, %82 ]
  %89 = phi i32 [ %98, %96 ], [ 16, %82 ]
  %90 = zext i32 %89 to i64
  %91 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %90, i32 noundef %88, ptr noundef %87) #10
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %86
  %94 = add nsw i32 %91, -1
  %95 = icmp ult i32 %94, %88
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %87, i32 %91
  %98 = add i32 %91, %89
  %99 = sub i32 %88, %91
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %86

101:                                              ; preds = %93, %86
  %102 = phi i32 [ -5, %93 ], [ %91, %86 ]
  store i8 %83, ptr %10, align 2
  store i8 %84, ptr %12, align 4
  store i8 %85, ptr %14, align 1
  br label %1251

103:                                              ; preds = %96
  store i8 %83, ptr %10, align 2
  store i8 %84, ptr %12, align 4
  store i8 %85, ptr %14, align 1
  br i1 %76, label %128, label %104

104:                                              ; preds = %104, %103
  %105 = phi i32 [ %126, %104 ], [ 0, %103 ]
  %106 = phi i32 [ %125, %104 ], [ %73, %103 ]
  %107 = getelementptr %struct.sfdp_parameter_header, ptr %80, i32 %105, i32 4
  %108 = getelementptr %struct.sfdp_parameter_header, ptr %80, i32 %105, i32 4, i32 2
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 16
  %112 = getelementptr %struct.sfdp_parameter_header, ptr %80, i32 %105, i32 4, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or i32 %115, %111
  %117 = load i8, ptr %107, align 4
  %118 = zext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = getelementptr %struct.sfdp_parameter_header, ptr %80, i32 %105, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 2
  %124 = add nuw nsw i32 %119, %123
  %125 = tail call i32 @llvm.umax.i32(i32 %106, i32 %124)
  %126 = add nuw nsw i32 %105, 1
  %127 = icmp eq i32 %126, %78
  br i1 %127, label %128, label %104

128:                                              ; preds = %104, %103, %55
  %129 = phi ptr [ %80, %103 ], [ null, %55 ], [ %80, %104 ]
  %130 = phi i32 [ 0, %103 ], [ 0, %55 ], [ %78, %104 ]
  %131 = phi i32 [ %73, %103 ], [ %73, %55 ], [ %125, %104 ]
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 4096)
  %133 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 8, i32 noundef 3520) #10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %1251, label %135

135:                                              ; preds = %128
  %136 = add nuw nsw i32 %132, 3
  %137 = lshr i32 %136, 2
  store i32 %137, ptr %133, align 4
  %138 = and i32 %136, 16380
  %139 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %138, i32 noundef 3520) #10
  %140 = getelementptr inbounds %struct.sfdp, ptr %133, i32 0, i32 1
  store ptr %139, ptr %140, align 4
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  tail call void @devm_kfree(ptr noundef %5, ptr noundef nonnull %133) #10
  br label %1251

143:                                              ; preds = %135
  %144 = load i8, ptr %10, align 2
  %145 = load i8, ptr %12, align 4
  %146 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  %147 = icmp eq i32 %132, 0
  br i1 %147, label %166, label %148

148:                                              ; preds = %158, %143
  %149 = phi ptr [ %159, %158 ], [ %139, %143 ]
  %150 = phi i32 [ %161, %158 ], [ %132, %143 ]
  %151 = phi i32 [ %160, %158 ], [ 0, %143 ]
  %152 = zext i32 %151 to i64
  %153 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %152, i32 noundef %150, ptr noundef %149) #10
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %148
  %156 = add nsw i32 %153, -1
  %157 = icmp ult i32 %156, %150
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = getelementptr i8, ptr %149, i32 %153
  %160 = add i32 %153, %151
  %161 = sub i32 %150, %153
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %148

163:                                              ; preds = %155, %148
  %164 = phi i32 [ -5, %155 ], [ %153, %148 ]
  store i8 %144, ptr %10, align 2
  store i8 %145, ptr %12, align 4
  store i8 %146, ptr %14, align 1
  %165 = load ptr, ptr %140, align 4
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %165) #10
  tail call void @devm_kfree(ptr noundef %5, ptr noundef nonnull %133) #10
  br label %1251

166:                                              ; preds = %158, %143
  store i8 %144, ptr %10, align 2
  store i8 %145, ptr %12, align 4
  store i8 %146, ptr %14, align 1
  %167 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 19
  store ptr %133, ptr %167, align 4
  br i1 %76, label %203, label %168

168:                                              ; preds = %199, %166
  %169 = phi ptr [ %200, %199 ], [ %42, %166 ]
  %170 = phi i32 [ %201, %199 ], [ 0, %166 ]
  %171 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %170
  %172 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %170, i32 5
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 8
  %176 = load i8, ptr %171, align 8
  %177 = zext i8 %176 to i32
  %178 = or i32 %175, %177
  %179 = icmp eq i32 %178, 65280
  br i1 %179, label %180, label %199

180:                                              ; preds = %168
  %181 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %170, i32 2
  %182 = load i8, ptr %181, align 2
  %183 = icmp eq i8 %182, 1
  br i1 %183, label %184, label %199

184:                                              ; preds = %180
  %185 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %170, i32 1
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %169, i32 0, i32 1
  %188 = load i8, ptr %187, align 1
  %189 = icmp ugt i8 %186, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %184
  %191 = icmp eq i8 %186, %188
  br i1 %191, label %192, label %199

192:                                              ; preds = %190
  %193 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %170, i32 3
  %194 = load i8, ptr %193, align 1
  %195 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %169, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = icmp ugt i8 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %184
  br label %199

199:                                              ; preds = %198, %192, %190, %180, %168
  %200 = phi ptr [ %171, %198 ], [ %169, %192 ], [ %169, %190 ], [ %169, %180 ], [ %169, %168 ]
  %201 = add nuw nsw i32 %170, 1
  %202 = icmp eq i32 %201, %130
  br i1 %202, label %203, label %168

203:                                              ; preds = %199, %166
  %204 = phi ptr [ %42, %166 ], [ %200, %199 ]
  %205 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #10
  %209 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %204, i32 0, i32 3
  %210 = load i8, ptr %209, align 1
  %211 = icmp ult i8 %210, 9
  br i1 %211, label %427, label %212

212:                                              ; preds = %203
  %213 = zext i8 %210 to i32
  %214 = shl nuw nsw i32 %213, 2
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 80) #10
  %216 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %204, i32 0, i32 4
  %217 = getelementptr %struct.sfdp_parameter_header, ptr %204, i32 0, i32 4, i32 2
  %218 = load i8, ptr %217, align 1
  %219 = getelementptr %struct.sfdp_parameter_header, ptr %204, i32 0, i32 4, i32 1
  %220 = load i8, ptr %219, align 1
  %221 = load i8, ptr %216, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %2, i8 0, i32 80, i1 false) #10
  %222 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %215, i32 noundef 3264) #12
  %223 = icmp eq ptr %222, null
  br i1 %223, label %427, label %224

224:                                              ; preds = %212
  %225 = zext i8 %220 to i32
  %226 = shl nuw nsw i32 %225, 8
  %227 = zext i8 %218 to i32
  %228 = shl nuw nsw i32 %227, 16
  %229 = or i32 %226, %228
  %230 = zext i8 %221 to i32
  %231 = or i32 %229, %230
  %232 = load i8, ptr %10, align 2
  %233 = load i8, ptr %12, align 4
  %234 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  br label %235

235:                                              ; preds = %245, %224
  %236 = phi ptr [ %246, %245 ], [ %222, %224 ]
  %237 = phi i32 [ %248, %245 ], [ %215, %224 ]
  %238 = phi i32 [ %247, %245 ], [ %231, %224 ]
  %239 = zext i32 %238 to i64
  %240 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %239, i32 noundef %237, ptr noundef %236) #10
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %235
  %243 = add nsw i32 %240, -1
  %244 = icmp ult i32 %243, %237
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = getelementptr i8, ptr %236, i32 %240
  %247 = add i32 %240, %238
  %248 = sub i32 %237, %240
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %235

250:                                              ; preds = %245, %242, %235
  %251 = phi i32 [ 0, %245 ], [ -5, %242 ], [ %240, %235 ]
  store i8 %232, ptr %10, align 2
  store i8 %233, ptr %12, align 4
  store i8 %234, ptr %14, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %2, ptr nonnull align 64 %222, i32 %215, i1 false) #10
  tail call void @kfree(ptr noundef nonnull %222) #10
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %427, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %2, align 4
  %255 = and i32 %254, 393216
  switch i32 %255, label %259 [
    i32 0, label %257
    i32 131072, label %257
    i32 262144, label %256
  ]

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %256, %253, %253
  %258 = phi i8 [ 4, %256 ], [ 3, %253 ], [ 3, %253 ]
  store i8 %258, ptr %12, align 4
  br label %259

259:                                              ; preds = %257, %253
  %260 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp sgt i32 %261, -1
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = and i32 %261, 2147483647
  %265 = icmp ugt i32 %264, 63
  br i1 %265, label %427, label %266

266:                                              ; preds = %263
  %267 = zext i32 %264 to i64
  %268 = shl nuw i64 1, %267
  br label %272

269:                                              ; preds = %259
  %270 = add nuw i32 %261, 1
  %271 = zext i32 %270 to i64
  br label %272

272:                                              ; preds = %269, %266
  %273 = phi i64 [ %271, %269 ], [ %268, %266 ]
  %274 = lshr i64 %273, 3
  store i64 %274, ptr %206, align 8
  %275 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 5
  br label %276

276:                                              ; preds = %314, %272
  %277 = phi i32 [ 0, %272 ], [ %315, %314 ]
  %278 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277
  %279 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr [20 x i32], ptr %2, i32 0, i32 %280
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, %282
  %286 = icmp eq i32 %285, 0
  %287 = load i32, ptr %278, align 4
  br i1 %286, label %288, label %292

288:                                              ; preds = %276
  %289 = xor i32 %287, -1
  %290 = load i32, ptr %275, align 4
  %291 = and i32 %290, %289
  store i32 %291, ptr %275, align 4
  br label %314

292:                                              ; preds = %276
  %293 = load i32, ptr %275, align 4
  %294 = or i32 %293, %287
  store i32 %294, ptr %275, align 4
  %295 = tail call i32 @spi_nor_hwcaps_read2cmd(i32 noundef %287) #10
  %296 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 6, i32 %295
  %297 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr [20 x i32], ptr %2, i32 0, i32 %298
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277, i32 4
  %302 = load i32, ptr %301, align 4
  %303 = lshr i32 %300, %302
  %304 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %277, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = trunc i32 %303 to i8
  %307 = lshr i8 %306, 5
  store i8 %307, ptr %296, align 4
  %308 = and i8 %306, 31
  %309 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 6, i32 %295, i32 1
  store i8 %308, ptr %309, align 1
  %310 = lshr i32 %303, 8
  %311 = trunc i32 %310 to i8
  %312 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 6, i32 %295, i32 2
  store i8 %311, ptr %312, align 2
  %313 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 6, i32 %295, i32 3
  store i32 %305, ptr %313, align 4
  br label %314

314:                                              ; preds = %292, %288
  %315 = add nuw nsw i32 %277, 1
  %316 = icmp eq i32 %315, 6
  br i1 %316, label %317, label %276

317:                                              ; preds = %314
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(96) %207, i8 0, i32 96, i1 false) #10
  %318 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 7
  %319 = load i32, ptr %318, align 4
  %320 = and i32 %319, 255
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = shl nuw i32 1, %320
  %324 = lshr i32 %319, 8
  %325 = trunc i32 %324 to i8
  tail call void @spi_nor_set_erase_type(ptr noundef %208, i32 noundef %323, i8 noundef zeroext %325) #10
  br label %326

326:                                              ; preds = %322, %317
  %327 = phi i8 [ 1, %322 ], [ 0, %317 ]
  %328 = lshr i32 %319, 16
  %329 = and i32 %328, 255
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %338, label %331

331:                                              ; preds = %326
  %332 = shl nuw i32 1, %329
  %333 = lshr i32 %319, 24
  %334 = trunc i32 %333 to i8
  %335 = or i8 %327, 2
  %336 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 1
  %337 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 1, i32 4
  store i8 1, ptr %337, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %336, i32 noundef %332, i8 noundef zeroext %334) #10
  br label %338

338:                                              ; preds = %331, %326
  %339 = phi i8 [ %335, %331 ], [ %327, %326 ]
  %340 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 8
  %341 = load i32, ptr %340, align 4
  %342 = and i32 %341, 255
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %338
  %345 = shl nuw i32 1, %342
  %346 = lshr i32 %341, 8
  %347 = trunc i32 %346 to i8
  %348 = or i8 %339, 4
  %349 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 2
  %350 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 2, i32 4
  store i8 2, ptr %350, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %349, i32 noundef %345, i8 noundef zeroext %347) #10
  %351 = load i32, ptr %340, align 4
  br label %352

352:                                              ; preds = %344, %338
  %353 = phi i32 [ %351, %344 ], [ %341, %338 ]
  %354 = phi i8 [ %348, %344 ], [ %339, %338 ]
  %355 = lshr i32 %353, 16
  %356 = and i32 %355, 255
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %365, label %358

358:                                              ; preds = %352
  %359 = shl nuw i32 1, %356
  %360 = lshr i32 %353, 24
  %361 = trunc i32 %360 to i8
  %362 = or i8 %354, 8
  %363 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 3
  %364 = getelementptr %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 2, i32 3, i32 4
  store i8 3, ptr %364, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %363, i32 noundef %359, i8 noundef zeroext %361) #10
  br label %365

365:                                              ; preds = %358, %352
  %366 = phi i8 [ %362, %358 ], [ %354, %352 ]
  %367 = load i64, ptr %206, align 8
  tail call void @spi_nor_init_uniform_erase_map(ptr noundef %207, i8 noundef zeroext %366, i64 noundef %367) #10
  tail call void @sort(ptr noundef %208, i32 noundef 4, i32 noundef 16, ptr noundef nonnull @spi_nor_map_cmp_erase_type, ptr noundef null) #10
  tail call fastcc void @spi_nor_regions_sort_erase_types(ptr noundef %207) #10
  %368 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 1
  %369 = load i64, ptr %368, align 8
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 15
  %372 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 8, i32 3
  store i8 %371, ptr %372, align 8
  %373 = load i8, ptr %209, align 1
  %374 = icmp eq i8 %373, 9
  br i1 %374, label %429, label %375

375:                                              ; preds = %365
  %376 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 10
  %377 = load i32, ptr %376, align 4
  %378 = lshr i32 %377, 4
  %379 = and i32 %378, 15
  %380 = shl nuw nsw i32 1, %379
  %381 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 2
  store i32 %380, ptr %381, align 4
  %382 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 14
  %383 = load i32, ptr %382, align 4
  %384 = lshr i32 %383, 20
  %385 = and i32 %384, 7
  switch i32 %385, label %405 [
    i32 0, label %402
    i32 1, label %386
    i32 4, label %386
    i32 2, label %390
    i32 3, label %394
    i32 5, label %398
  ]

386:                                              ; preds = %375, %375
  %387 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %388 = load i32, ptr %387, align 4
  %389 = or i32 %388, 1536
  store i32 %389, ptr %387, align 4
  br label %402

390:                                              ; preds = %375
  %391 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %392 = load i32, ptr %391, align 4
  %393 = and i32 %392, -513
  store i32 %393, ptr %391, align 4
  br label %402

394:                                              ; preds = %375
  %395 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, -513
  store i32 %397, ptr %395, align 4
  br label %402

398:                                              ; preds = %375
  %399 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %400 = load i32, ptr %399, align 4
  %401 = or i32 %400, 512
  store i32 %401, ptr %399, align 4
  br label %402

402:                                              ; preds = %398, %394, %390, %386, %375
  %403 = phi ptr [ @spi_nor_sr2_bit1_quad_enable, %398 ], [ @spi_nor_sr2_bit7_quad_enable, %394 ], [ @spi_nor_sr1_bit6_quad_enable, %390 ], [ @spi_nor_sr2_bit1_quad_enable, %386 ], [ null, %375 ]
  %404 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %206, i32 0, i32 11
  store ptr %403, ptr %404, align 4
  br label %405

405:                                              ; preds = %402, %375
  %406 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 15
  %407 = load i32, ptr %406, align 4
  %408 = and i32 %407, 4096
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %412 = load i32, ptr %411, align 4
  %413 = or i32 %412, 32768
  store i32 %413, ptr %411, align 4
  br label %414

414:                                              ; preds = %410, %405
  %415 = load i8, ptr %209, align 1
  %416 = icmp eq i8 %415, 16
  br i1 %416, label %429, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds [20 x i32], ptr %2, i32 0, i32 17
  %419 = load i32, ptr %418, align 4
  %420 = lshr i32 %419, 29
  %421 = and i32 %420, 3
  switch i32 %421, label %423 [
    i32 0, label %424
    i32 1, label %422
    i32 2, label %429
    i32 3, label %427
  ]

422:                                              ; preds = %417
  br label %424

423:                                              ; preds = %417
  unreachable

424:                                              ; preds = %422, %417
  %425 = phi i32 [ 2, %422 ], [ 1, %417 ]
  %426 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  store i32 %425, ptr %426, align 8
  br label %429

427:                                              ; preds = %417, %263, %250, %212, %203
  %428 = phi i32 [ -12, %212 ], [ -95, %417 ], [ -22, %263 ], [ %251, %250 ], [ -22, %203 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #10
  br label %1251

429:                                              ; preds = %424, %417, %414, %365
  %430 = call i32 @spi_nor_post_bfpt_fixups(ptr noundef %0, ptr noundef %204, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #10
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %1251

432:                                              ; preds = %429
  %433 = load i8, ptr %74, align 2
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %1250, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  br label %437

437:                                              ; preds = %1245, %435
  %438 = phi i32 [ 0, %435 ], [ %1246, %1245 ]
  %439 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438
  %440 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 5
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i16
  %443 = shl nuw i16 %442, 8
  %444 = load i8, ptr %439, align 8
  %445 = zext i8 %444 to i16
  %446 = or i16 %443, %445
  switch i16 %446, label %1245 [
    i16 -127, label %447
    i16 -124, label %783
    i16 -251, label %1098
    i16 -121, label %1184
  ]

447:                                              ; preds = %437
  %448 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 3
  %449 = load i8, ptr %448, align 1
  %450 = zext i8 %449 to i32
  %451 = shl nuw nsw i32 %450, 2
  %452 = call noalias align 64 ptr @__kmalloc(i32 noundef %451, i32 noundef 3264) #12
  %453 = icmp eq ptr %452, null
  br i1 %453, label %1238, label %454

454:                                              ; preds = %447
  %455 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4
  %456 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 2
  %457 = load i8, ptr %456, align 2
  %458 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 1
  %459 = load i8, ptr %458, align 1
  %460 = load i8, ptr %455, align 4
  %461 = load i8, ptr %10, align 2
  %462 = load i8, ptr %12, align 4
  %463 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  %464 = icmp eq i8 %449, 0
  br i1 %464, label %490, label %465

465:                                              ; preds = %454
  %466 = zext i8 %459 to i32
  %467 = shl nuw nsw i32 %466, 8
  %468 = zext i8 %457 to i32
  %469 = shl nuw nsw i32 %468, 16
  %470 = or i32 %467, %469
  %471 = zext i8 %460 to i32
  %472 = or i32 %470, %471
  br label %473

473:                                              ; preds = %483, %465
  %474 = phi ptr [ %484, %483 ], [ %452, %465 ]
  %475 = phi i32 [ %486, %483 ], [ %451, %465 ]
  %476 = phi i32 [ %485, %483 ], [ %472, %465 ]
  %477 = zext i32 %476 to i64
  %478 = call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %477, i32 noundef %475, ptr noundef %474) #10
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %488, label %480

480:                                              ; preds = %473
  %481 = add nsw i32 %478, -1
  %482 = icmp ult i32 %481, %475
  br i1 %482, label %483, label %488

483:                                              ; preds = %480
  %484 = getelementptr i8, ptr %474, i32 %478
  %485 = add i32 %478, %476
  %486 = sub i32 %475, %478
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %490, label %473

488:                                              ; preds = %480, %473
  %489 = phi i32 [ %478, %473 ], [ -5, %480 ]
  store i8 %461, ptr %10, align 2
  store i8 %462, ptr %12, align 4
  store i8 %463, ptr %14, align 1
  br label %1234

490:                                              ; preds = %483, %454
  store i8 %461, ptr %10, align 2
  store i8 %462, ptr %12, align 4
  store i8 %463, ptr %14, align 1
  %491 = load i8, ptr %448, align 1
  %492 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %493 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %492, i32 noundef 3264, i32 noundef 1) #11
  %494 = icmp eq ptr %493, null
  br i1 %494, label %590, label %495

495:                                              ; preds = %490
  %496 = load i8, ptr %12, align 4
  %497 = load i8, ptr %14, align 1
  %498 = load i8, ptr %10, align 2
  %499 = icmp eq i8 %491, 0
  br i1 %499, label %564, label %500

500:                                              ; preds = %551, %495
  %501 = phi i32 [ %562, %551 ], [ 0, %495 ]
  %502 = phi i32 [ %561, %551 ], [ 0, %495 ]
  %503 = phi i8 [ %559, %551 ], [ 0, %495 ]
  %504 = getelementptr i32, ptr %452, i32 %501
  %505 = load i32, ptr %504, align 4
  %506 = and i32 %505, 2
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %564

508:                                              ; preds = %500
  %509 = lshr i32 %505, 22
  %510 = and i32 %509, 3
  switch i32 %510, label %513 [
    i32 0, label %516
    i32 1, label %511
    i32 2, label %512
    i32 3, label %514
  ]

511:                                              ; preds = %508
  br label %516

512:                                              ; preds = %508
  br label %516

513:                                              ; preds = %508
  unreachable

514:                                              ; preds = %508
  %515 = load i8, ptr %12, align 4
  br label %516

516:                                              ; preds = %514, %512, %511, %508
  %517 = phi i8 [ %515, %514 ], [ 4, %512 ], [ 3, %511 ], [ 0, %508 ]
  store i8 %517, ptr %12, align 4
  %518 = load i32, ptr %504, align 4
  %519 = lshr i32 %518, 16
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 15
  %522 = icmp eq i8 %521, 15
  br i1 %522, label %523, label %525

523:                                              ; preds = %516
  %524 = load i8, ptr %14, align 1
  br label %525

525:                                              ; preds = %523, %516
  %526 = phi i8 [ %524, %523 ], [ %521, %516 ]
  store i8 %526, ptr %14, align 1
  %527 = load i32, ptr %504, align 4
  %528 = lshr i32 %527, 8
  %529 = trunc i32 %528 to i8
  store i8 %529, ptr %10, align 2
  %530 = or i32 %501, 1
  %531 = getelementptr i32, ptr %452, i32 %530
  %532 = load i32, ptr %531, align 4
  br label %533

533:                                              ; preds = %543, %525
  %534 = phi ptr [ %544, %543 ], [ %493, %525 ]
  %535 = phi i32 [ %546, %543 ], [ 1, %525 ]
  %536 = phi i32 [ %545, %543 ], [ %532, %525 ]
  %537 = zext i32 %536 to i64
  %538 = call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %537, i32 noundef %535, ptr noundef %534) #10
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %548, label %540

540:                                              ; preds = %533
  %541 = add nsw i32 %538, -1
  %542 = icmp ult i32 %541, %535
  br i1 %542, label %543, label %548

543:                                              ; preds = %540
  %544 = getelementptr i8, ptr %534, i32 %538
  %545 = add i32 %538, %536
  %546 = sub i32 %535, %538
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %551, label %533

548:                                              ; preds = %540, %533
  %549 = phi i32 [ %538, %533 ], [ -5, %540 ]
  %550 = inttoptr i32 %549 to ptr
  br label %587

551:                                              ; preds = %543
  %552 = lshr i32 %505, 24
  %553 = shl nsw i32 %502, 1
  %554 = load i8, ptr %493, align 8
  %555 = zext i8 %554 to i32
  %556 = and i32 %552, %555
  %557 = icmp ne i32 %556, 0
  %558 = zext i1 %557 to i32
  %559 = add i8 %503, 2
  %560 = and i32 %553, 254
  %561 = or i32 %560, %558
  %562 = zext i8 %559 to i32
  %563 = icmp ult i8 %559, %491
  br i1 %563, label %500, label %564

564:                                              ; preds = %551, %500, %495
  %565 = phi i8 [ 0, %495 ], [ %503, %500 ], [ %559, %551 ]
  %566 = phi i32 [ 0, %495 ], [ %502, %500 ], [ %561, %551 ]
  %567 = icmp ult i8 %565, %491
  br i1 %567, label %568, label %587

568:                                              ; preds = %579, %564
  %569 = phi i8 [ %583, %579 ], [ %565, %564 ]
  %570 = zext i8 %569 to i32
  %571 = getelementptr i32, ptr %452, i32 %570
  %572 = load i32, ptr %571, align 4
  %573 = lshr i32 %572, 8
  %574 = and i32 %573, 255
  %575 = icmp eq i32 %574, %566
  br i1 %575, label %585, label %576

576:                                              ; preds = %568
  %577 = and i32 %572, 1
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %587

579:                                              ; preds = %576
  %580 = lshr i32 %572, 16
  %581 = trunc i32 %580 to i8
  %582 = add i8 %569, 2
  %583 = add i8 %582, %581
  %584 = icmp ult i8 %583, %491
  br i1 %584, label %568, label %587

585:                                              ; preds = %568
  %586 = getelementptr i32, ptr %452, i32 %570
  br label %587

587:                                              ; preds = %585, %579, %576, %564, %548
  %588 = phi ptr [ %550, %548 ], [ inttoptr (i32 -22 to ptr), %564 ], [ %586, %585 ], [ inttoptr (i32 -22 to ptr), %576 ], [ inttoptr (i32 -22 to ptr), %579 ]
  call void @kfree(ptr noundef nonnull %493) #10
  store i8 %496, ptr %12, align 4
  store i8 %497, ptr %14, align 1
  store i8 %498, ptr %10, align 2
  %589 = icmp ugt ptr %588, inttoptr (i32 -4096 to ptr)
  br i1 %589, label %590, label %593

590:                                              ; preds = %587, %490
  %591 = phi ptr [ %588, %587 ], [ inttoptr (i32 -12 to ptr), %490 ]
  %592 = ptrtoint ptr %591 to i32
  br label %1234

593:                                              ; preds = %587
  %594 = load ptr, ptr %205, align 4
  %595 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2
  %596 = load i32, ptr %588, align 4
  %597 = lshr i32 %596, 16
  %598 = and i32 %597, 255
  %599 = shl nuw nsw i32 %598, 4
  %600 = add nuw nsw i32 %599, 16
  %601 = load ptr, ptr %4, align 4
  %602 = call noalias ptr @devm_kmalloc(ptr noundef %601, i32 noundef %600, i32 noundef 3520) #10
  %603 = icmp eq ptr %602, null
  br i1 %603, label %1234, label %604

604:                                              ; preds = %593
  %605 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8
  store ptr %602, ptr %605, align 8
  %606 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 0, i32 4
  %607 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 0, i32 2
  %608 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 1
  %609 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 1, i32 4
  %610 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 1, i32 2
  %611 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 2
  %612 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 2, i32 4
  %613 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 2, i32 2
  %614 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 3
  %615 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 3, i32 4
  %616 = getelementptr %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 2, i32 3, i32 2
  br label %617

617:                                              ; preds = %688, %604
  %618 = phi i8 [ 0, %604 ], [ %691, %688 ]
  %619 = phi i8 [ -1, %604 ], [ %690, %688 ]
  %620 = phi i32 [ 0, %604 ], [ %622, %688 ]
  %621 = phi i64 [ 0, %604 ], [ %693, %688 ]
  %622 = add nuw nsw i32 %620, 1
  %623 = getelementptr i32, ptr %588, i32 %622
  %624 = load i32, ptr %623, align 4
  %625 = add i32 %624, 256
  %626 = and i32 %625, -256
  %627 = zext i32 %626 to i64
  %628 = getelementptr %struct.spi_nor_erase_region, ptr %602, i32 %620
  %629 = getelementptr %struct.spi_nor_erase_region, ptr %602, i32 %620, i32 1
  store i64 %627, ptr %629, align 8
  %630 = trunc i32 %624 to i8
  %631 = and i8 %630, 15
  %632 = zext i8 %631 to i64
  %633 = or i64 %621, %632
  store i64 %633, ptr %628, align 8
  %634 = zext i8 %631 to i32
  %635 = load i32, ptr %595, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %649, label %637

637:                                              ; preds = %617
  %638 = load i8, ptr %606, align 1
  %639 = zext i8 %638 to i32
  %640 = shl nuw i32 1, %639
  %641 = and i32 %640, %634
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %649, label %643

643:                                              ; preds = %637
  %644 = load i32, ptr %607, align 4
  %645 = and i32 %644, %626
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %684, %671, %658, %643
  %648 = or i64 %633, 32
  store i64 %648, ptr %628, align 8
  br label %688

649:                                              ; preds = %643, %637, %617
  %650 = load i32, ptr %608, align 4
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %662, label %652

652:                                              ; preds = %649
  %653 = load i8, ptr %609, align 1
  %654 = zext i8 %653 to i32
  %655 = shl nuw i32 1, %654
  %656 = and i32 %655, %634
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %662, label %658

658:                                              ; preds = %652
  %659 = load i32, ptr %610, align 4
  %660 = and i32 %659, %626
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %647

662:                                              ; preds = %658, %652, %649
  %663 = load i32, ptr %611, align 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %675, label %665

665:                                              ; preds = %662
  %666 = load i8, ptr %612, align 1
  %667 = zext i8 %666 to i32
  %668 = shl nuw i32 1, %667
  %669 = and i32 %668, %634
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %675, label %671

671:                                              ; preds = %665
  %672 = load i32, ptr %613, align 4
  %673 = and i32 %672, %626
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %647

675:                                              ; preds = %671, %665, %662
  %676 = load i32, ptr %614, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %688, label %678

678:                                              ; preds = %675
  %679 = load i8, ptr %615, align 1
  %680 = zext i8 %679 to i32
  %681 = shl nuw i32 1, %680
  %682 = and i32 %681, %634
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %688, label %684

684:                                              ; preds = %678
  %685 = load i32, ptr %616, align 4
  %686 = and i32 %685, %626
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %647

688:                                              ; preds = %684, %678, %675, %647
  %689 = phi i64 [ %648, %647 ], [ %633, %675 ], [ %633, %678 ], [ %633, %684 ]
  %690 = and i8 %631, %619
  %691 = or i8 %631, %618
  %692 = and i64 %689, -64
  %693 = add i64 %692, %627
  %694 = icmp eq i32 %620, %598
  br i1 %694, label %695, label %617

695:                                              ; preds = %688
  %696 = or i64 %689, 16
  store i64 %696, ptr %628, align 8
  %697 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %594, i32 0, i32 8, i32 3
  %698 = load i8, ptr %697, align 8
  %699 = icmp eq i8 %690, 0
  br i1 %699, label %747, label %700

700:                                              ; preds = %695
  %701 = zext i8 %690 to i32
  %702 = load i32, ptr %595, align 4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %711, label %704

704:                                              ; preds = %700
  %705 = load i8, ptr %606, align 1
  %706 = zext i8 %705 to i32
  %707 = shl nuw i32 1, %706
  %708 = and i32 %707, %701
  %709 = icmp ne i32 %708, 0
  %710 = zext i1 %709 to i8
  br label %711

711:                                              ; preds = %704, %700
  %712 = phi i8 [ 0, %700 ], [ %710, %704 ]
  %713 = load i32, ptr %608, align 4
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %723, label %715

715:                                              ; preds = %711
  %716 = load i8, ptr %609, align 1
  %717 = zext i8 %716 to i32
  %718 = shl nuw i32 1, %717
  %719 = and i32 %718, %701
  %720 = icmp eq i32 %719, 0
  %721 = or i8 %712, 2
  %722 = select i1 %720, i8 %712, i8 %721
  br label %723

723:                                              ; preds = %715, %711
  %724 = phi i8 [ %712, %711 ], [ %722, %715 ]
  %725 = load i32, ptr %611, align 4
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %735, label %727

727:                                              ; preds = %723
  %728 = load i8, ptr %612, align 1
  %729 = zext i8 %728 to i32
  %730 = shl nuw i32 1, %729
  %731 = and i32 %730, %701
  %732 = icmp eq i32 %731, 0
  %733 = or i8 %724, 4
  %734 = select i1 %732, i8 %724, i8 %733
  br label %735

735:                                              ; preds = %727, %723
  %736 = phi i8 [ %724, %723 ], [ %734, %727 ]
  %737 = load i32, ptr %614, align 4
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %747, label %739

739:                                              ; preds = %735
  %740 = load i8, ptr %615, align 1
  %741 = zext i8 %740 to i32
  %742 = shl nuw i32 1, %741
  %743 = and i32 %742, %701
  %744 = icmp eq i32 %743, 0
  %745 = or i8 %736, 8
  %746 = select i1 %744, i8 %736, i8 %745
  br label %747

747:                                              ; preds = %739, %735, %695
  %748 = phi i8 [ 0, %695 ], [ %736, %735 ], [ %746, %739 ]
  store i8 %748, ptr %697, align 8
  %749 = icmp eq i8 %691, 0
  br i1 %749, label %757, label %750

750:                                              ; preds = %747
  %751 = zext i8 %691 to i32
  %752 = load i8, ptr %606, align 1
  %753 = zext i8 %752 to i32
  %754 = shl nuw i32 1, %753
  %755 = and i32 %754, %751
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %758, label %759

757:                                              ; preds = %747
  store i8 %698, ptr %697, align 8
  br label %1234

758:                                              ; preds = %750
  call void @spi_nor_set_erase_type(ptr noundef %595, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %759

759:                                              ; preds = %758, %750
  %760 = load i8, ptr %609, align 1
  %761 = zext i8 %760 to i32
  %762 = shl nuw i32 1, %761
  %763 = and i32 %762, %751
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %766

765:                                              ; preds = %759
  call void @spi_nor_set_erase_type(ptr noundef %608, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %766

766:                                              ; preds = %765, %759
  %767 = load i8, ptr %612, align 1
  %768 = zext i8 %767 to i32
  %769 = shl nuw i32 1, %768
  %770 = and i32 %769, %751
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %766
  call void @spi_nor_set_erase_type(ptr noundef %611, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %773

773:                                              ; preds = %772, %766
  %774 = load i8, ptr %615, align 1
  %775 = zext i8 %774 to i32
  %776 = shl nuw i32 1, %775
  %777 = and i32 %776, %751
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %780

779:                                              ; preds = %773
  call void @spi_nor_set_erase_type(ptr noundef %614, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %780

780:                                              ; preds = %779, %773
  %781 = load ptr, ptr %205, align 4
  %782 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %781, i32 0, i32 8
  call fastcc void @spi_nor_regions_sort_erase_types(ptr noundef %782) #10
  br label %1234

783:                                              ; preds = %437
  %784 = load ptr, ptr %205, align 4
  %785 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 7
  %786 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2
  %787 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 2
  %788 = load i8, ptr %787, align 2
  %789 = icmp eq i8 %788, 1
  br i1 %789, label %790, label %1238

790:                                              ; preds = %783
  %791 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 3
  %792 = load i8, ptr %791, align 1
  %793 = icmp ult i8 %792, 2
  br i1 %793, label %1238, label %794

794:                                              ; preds = %790
  %795 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %796 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %795, i32 noundef 3264, i32 noundef 8) #11
  %797 = icmp eq ptr %796, null
  br i1 %797, label %1238, label %798

798:                                              ; preds = %794
  %799 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4
  %800 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 2
  %801 = load i8, ptr %800, align 2
  %802 = zext i8 %801 to i32
  %803 = shl nuw nsw i32 %802, 16
  %804 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 1
  %805 = load i8, ptr %804, align 1
  %806 = zext i8 %805 to i32
  %807 = shl nuw nsw i32 %806, 8
  %808 = or i32 %807, %803
  %809 = load i8, ptr %799, align 4
  %810 = zext i8 %809 to i32
  %811 = or i32 %808, %810
  %812 = load i8, ptr %10, align 2
  %813 = load i8, ptr %12, align 4
  %814 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  br label %815

815:                                              ; preds = %825, %798
  %816 = phi ptr [ %826, %825 ], [ %796, %798 ]
  %817 = phi i32 [ %828, %825 ], [ 8, %798 ]
  %818 = phi i32 [ %827, %825 ], [ %811, %798 ]
  %819 = zext i32 %818 to i64
  %820 = call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %819, i32 noundef %817, ptr noundef %816) #10
  %821 = icmp slt i32 %820, 0
  br i1 %821, label %830, label %822

822:                                              ; preds = %815
  %823 = add nsw i32 %820, -1
  %824 = icmp ult i32 %823, %817
  br i1 %824, label %825, label %830

825:                                              ; preds = %822
  %826 = getelementptr i8, ptr %816, i32 %820
  %827 = add i32 %820, %818
  %828 = sub i32 %817, %820
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %832, label %815

830:                                              ; preds = %822, %815
  %831 = phi i32 [ -5, %822 ], [ %820, %815 ]
  store i8 %812, ptr %10, align 2
  store i8 %813, ptr %12, align 4
  store i8 %814, ptr %14, align 1
  br label %1234

832:                                              ; preds = %825
  store i8 %812, ptr %10, align 2
  store i8 %813, ptr %12, align 4
  store i8 %814, ptr %14, align 1
  %833 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 5
  %834 = load i32, ptr %833, align 4
  %835 = and i32 %834, 1
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %840, label %837

837:                                              ; preds = %832
  %838 = load i32, ptr %796, align 8
  %839 = and i32 %838, 1
  br label %840

840:                                              ; preds = %837, %832
  %841 = phi i32 [ 0, %832 ], [ %839, %837 ]
  %842 = and i32 %834, 2
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %848, label %844

844:                                              ; preds = %840
  %845 = load i32, ptr %796, align 8
  %846 = and i32 %845, 2
  %847 = or i32 %846, %841
  br label %848

848:                                              ; preds = %844, %840
  %849 = phi i32 [ %841, %840 ], [ %847, %844 ]
  %850 = and i32 %834, 8
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %857, label %852

852:                                              ; preds = %848
  %853 = load i32, ptr %796, align 8
  %854 = shl i32 %853, 1
  %855 = and i32 %854, 8
  %856 = or i32 %855, %849
  br label %857

857:                                              ; preds = %852, %848
  %858 = phi i32 [ %849, %848 ], [ %856, %852 ]
  %859 = and i32 %834, 16
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %866, label %861

861:                                              ; preds = %857
  %862 = load i32, ptr %796, align 8
  %863 = shl i32 %862, 1
  %864 = and i32 %863, 16
  %865 = or i32 %864, %858
  br label %866

866:                                              ; preds = %861, %857
  %867 = phi i32 [ %858, %857 ], [ %865, %861 ]
  %868 = and i32 %834, 128
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %875, label %870

870:                                              ; preds = %866
  %871 = load i32, ptr %796, align 8
  %872 = shl i32 %871, 3
  %873 = and i32 %872, 128
  %874 = or i32 %873, %867
  br label %875

875:                                              ; preds = %870, %866
  %876 = phi i32 [ %867, %866 ], [ %874, %870 ]
  %877 = and i32 %834, 256
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %884, label %879

879:                                              ; preds = %875
  %880 = load i32, ptr %796, align 8
  %881 = shl i32 %880, 3
  %882 = and i32 %881, 256
  %883 = or i32 %882, %876
  br label %884

884:                                              ; preds = %879, %875
  %885 = phi i32 [ %876, %875 ], [ %883, %879 ]
  %886 = and i32 %834, 4
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %893, label %888

888:                                              ; preds = %884
  %889 = load i32, ptr %796, align 8
  %890 = lshr i32 %889, 11
  %891 = and i32 %890, 4
  %892 = or i32 %891, %885
  br label %893

893:                                              ; preds = %888, %884
  %894 = phi i32 [ %885, %884 ], [ %892, %888 ]
  %895 = and i32 %834, 64
  %896 = icmp eq i32 %895, 0
  %897 = load i32, ptr %796, align 8
  %898 = lshr i32 %897, 8
  %899 = and i32 %898, 64
  %900 = select i1 %896, i32 0, i32 %899
  %901 = or i32 %894, %900
  %902 = and i32 %834, 1024
  %903 = icmp eq i32 %902, 0
  %904 = lshr i32 %897, 5
  %905 = and i32 %904, 1024
  %906 = select i1 %903, i32 0, i32 %905
  %907 = or i32 %906, %901
  %908 = and i32 %897, 64
  %909 = icmp eq i32 %908, 0
  %910 = and i32 %897, 128
  %911 = icmp eq i32 %910, 0
  %912 = and i32 %897, 256
  %913 = icmp eq i32 %912, 0
  %914 = shl nuw nsw i32 %912, 10
  %915 = lshr i32 %897, 9
  %916 = and i32 %915, 15
  %917 = shl i32 %897, 10
  %918 = and i32 %917, 196608
  %919 = or i32 %914, %918
  %920 = icmp eq i32 %916, 0
  br i1 %920, label %1234, label %921

921:                                              ; preds = %893
  %922 = load i32, ptr %786, align 4
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %932, label %924

924:                                              ; preds = %921
  %925 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 0, i32 4
  %926 = load i8, ptr %925, align 1
  %927 = zext i8 %926 to i32
  %928 = shl nuw i32 1, %927
  %929 = and i32 %928, %916
  %930 = icmp ne i32 %929, 0
  %931 = zext i1 %930 to i8
  br label %932

932:                                              ; preds = %924, %921
  %933 = phi i8 [ 0, %921 ], [ %931, %924 ]
  %934 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 1
  %935 = load i32, ptr %934, align 4
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %946, label %937

937:                                              ; preds = %932
  %938 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 1, i32 4
  %939 = load i8, ptr %938, align 1
  %940 = zext i8 %939 to i32
  %941 = shl nuw i32 1, %940
  %942 = and i32 %941, %916
  %943 = icmp eq i32 %942, 0
  %944 = or i8 %933, 2
  %945 = select i1 %943, i8 %933, i8 %944
  br label %946

946:                                              ; preds = %937, %932
  %947 = phi i8 [ %933, %932 ], [ %945, %937 ]
  %948 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 2
  %949 = load i32, ptr %948, align 4
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %960, label %951

951:                                              ; preds = %946
  %952 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 2, i32 4
  %953 = load i8, ptr %952, align 1
  %954 = zext i8 %953 to i32
  %955 = shl nuw i32 1, %954
  %956 = and i32 %955, %916
  %957 = icmp eq i32 %956, 0
  %958 = or i8 %947, 4
  %959 = select i1 %957, i8 %947, i8 %958
  br label %960

960:                                              ; preds = %951, %946
  %961 = phi i8 [ %947, %946 ], [ %959, %951 ]
  %962 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 3
  %963 = load i32, ptr %962, align 4
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %974, label %965

965:                                              ; preds = %960
  %966 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 3, i32 4
  %967 = load i8, ptr %966, align 1
  %968 = zext i8 %967 to i32
  %969 = shl nuw i32 1, %968
  %970 = and i32 %969, %916
  %971 = icmp eq i32 %970, 0
  %972 = or i8 %961, 8
  %973 = select i1 %971, i8 %961, i8 %972
  br label %974

974:                                              ; preds = %965, %960
  %975 = phi i8 [ %961, %960 ], [ %973, %965 ]
  %976 = zext i8 %975 to i32
  %977 = icmp ne i32 %907, 0
  %978 = icmp ne i32 %919, 0
  %979 = select i1 %977, i1 %978, i1 false
  %980 = icmp ne i8 %975, 0
  %981 = select i1 %979, i1 %980, i1 false
  br i1 %981, label %982, label %1234

982:                                              ; preds = %974
  %983 = and i32 %834, -460256
  %984 = or i32 %919, %983
  %985 = or i32 %984, %907
  store i32 %985, ptr %833, align 4
  %986 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 0, i32 2
  %987 = load i8, ptr %986, align 2
  %988 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %987) #10
  store i8 %988, ptr %986, align 2
  %989 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 1, i32 2
  %990 = load i8, ptr %989, align 2
  %991 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %990) #10
  store i8 %991, ptr %989, align 2
  %992 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 2, i32 2
  %993 = load i8, ptr %992, align 2
  %994 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %993) #10
  store i8 %994, ptr %992, align 2
  %995 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 3, i32 2
  %996 = load i8, ptr %995, align 2
  %997 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %996) #10
  store i8 %997, ptr %995, align 2
  %998 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 4, i32 2
  %999 = load i8, ptr %998, align 2
  %1000 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %999) #10
  store i8 %1000, ptr %998, align 2
  %1001 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 5, i32 2
  %1002 = load i8, ptr %1001, align 2
  %1003 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1002) #10
  store i8 %1003, ptr %1001, align 2
  %1004 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 6, i32 2
  %1005 = load i8, ptr %1004, align 2
  %1006 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1005) #10
  store i8 %1006, ptr %1004, align 2
  %1007 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 7, i32 2
  %1008 = load i8, ptr %1007, align 2
  %1009 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1008) #10
  store i8 %1009, ptr %1007, align 2
  %1010 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 8, i32 2
  %1011 = load i8, ptr %1010, align 2
  %1012 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1011) #10
  store i8 %1012, ptr %1010, align 2
  %1013 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 9, i32 2
  %1014 = load i8, ptr %1013, align 2
  %1015 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1014) #10
  store i8 %1015, ptr %1013, align 2
  %1016 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 10, i32 2
  %1017 = load i8, ptr %1016, align 2
  %1018 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1017) #10
  store i8 %1018, ptr %1016, align 2
  %1019 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 11, i32 2
  %1020 = load i8, ptr %1019, align 2
  %1021 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1020) #10
  store i8 %1021, ptr %1019, align 2
  %1022 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 12, i32 2
  %1023 = load i8, ptr %1022, align 2
  %1024 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1023) #10
  store i8 %1024, ptr %1022, align 2
  %1025 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 13, i32 2
  %1026 = load i8, ptr %1025, align 2
  %1027 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1026) #10
  store i8 %1027, ptr %1025, align 2
  %1028 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 14, i32 2
  %1029 = load i8, ptr %1028, align 2
  %1030 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1029) #10
  store i8 %1030, ptr %1028, align 2
  %1031 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 6, i32 15, i32 2
  %1032 = load i8, ptr %1031, align 2
  %1033 = call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %1032) #10
  store i8 %1033, ptr %1031, align 2
  br i1 %909, label %1036, label %1034

1034:                                             ; preds = %982
  call void @spi_nor_set_pp_settings(ptr noundef %785, i8 noundef zeroext 18, i32 noundef 65793) #10
  %1035 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 7, i32 7
  call void @spi_nor_set_pp_settings(ptr noundef %1035, i8 noundef zeroext 18, i32 noundef 17303560) #10
  br label %1036

1036:                                             ; preds = %1034, %982
  br i1 %911, label %1039, label %1037

1037:                                             ; preds = %1036
  %1038 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 7, i32 1
  call void @spi_nor_set_pp_settings(ptr noundef %1038, i8 noundef zeroext 52, i32 noundef 65796) #10
  br label %1039

1039:                                             ; preds = %1037, %1036
  br i1 %913, label %1042, label %1040

1040:                                             ; preds = %1039
  %1041 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 7, i32 2
  call void @spi_nor_set_pp_settings(ptr noundef %1041, i8 noundef zeroext 62, i32 noundef 66564) #10
  br label %1042

1042:                                             ; preds = %1040, %1039
  %1043 = getelementptr i32, ptr %796, i32 1
  %1044 = and i32 %976, 1
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1055, label %1046

1046:                                             ; preds = %1042
  %1047 = load i32, ptr %1043, align 4
  %1048 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 0, i32 4
  %1049 = load i8, ptr %1048, align 1
  %1050 = zext i8 %1049 to i32
  %1051 = shl nuw nsw i32 %1050, 3
  %1052 = lshr i32 %1047, %1051
  %1053 = trunc i32 %1052 to i8
  %1054 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 0, i32 3
  store i8 %1053, ptr %1054, align 4
  br label %1056

1055:                                             ; preds = %1042
  call void @spi_nor_set_erase_type(ptr noundef %786, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %1056

1056:                                             ; preds = %1055, %1046
  %1057 = and i32 %976, 2
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1068, label %1059

1059:                                             ; preds = %1056
  %1060 = load i32, ptr %1043, align 4
  %1061 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 1, i32 4
  %1062 = load i8, ptr %1061, align 1
  %1063 = zext i8 %1062 to i32
  %1064 = shl nuw nsw i32 %1063, 3
  %1065 = lshr i32 %1060, %1064
  %1066 = trunc i32 %1065 to i8
  %1067 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 1, i32 3
  store i8 %1066, ptr %1067, align 4
  br label %1069

1068:                                             ; preds = %1056
  call void @spi_nor_set_erase_type(ptr noundef %934, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %1069

1069:                                             ; preds = %1068, %1059
  %1070 = and i32 %976, 4
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1081, label %1072

1072:                                             ; preds = %1069
  %1073 = load i32, ptr %1043, align 4
  %1074 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 2, i32 4
  %1075 = load i8, ptr %1074, align 1
  %1076 = zext i8 %1075 to i32
  %1077 = shl nuw nsw i32 %1076, 3
  %1078 = lshr i32 %1073, %1077
  %1079 = trunc i32 %1078 to i8
  %1080 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 2, i32 3
  store i8 %1079, ptr %1080, align 4
  br label %1082

1081:                                             ; preds = %1069
  call void @spi_nor_set_erase_type(ptr noundef %948, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %1082

1082:                                             ; preds = %1081, %1072
  %1083 = and i32 %976, 8
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1094, label %1085

1085:                                             ; preds = %1082
  %1086 = load i32, ptr %1043, align 4
  %1087 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 3, i32 4
  %1088 = load i8, ptr %1087, align 1
  %1089 = zext i8 %1088 to i32
  %1090 = shl nuw nsw i32 %1089, 3
  %1091 = lshr i32 %1086, %1090
  %1092 = trunc i32 %1091 to i8
  %1093 = getelementptr %struct.spi_nor_flash_parameter, ptr %784, i32 0, i32 8, i32 2, i32 3, i32 3
  store i8 %1092, ptr %1093, align 4
  br label %1095

1094:                                             ; preds = %1082
  call void @spi_nor_set_erase_type(ptr noundef %962, i32 noundef 0, i8 noundef zeroext -1) #10
  br label %1095

1095:                                             ; preds = %1094, %1085
  store i8 4, ptr %12, align 4
  %1096 = load i32, ptr %436, align 4
  %1097 = or i32 %1096, 192
  store i32 %1097, ptr %436, align 4
  br label %1234

1098:                                             ; preds = %437
  %1099 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 3
  %1100 = load i8, ptr %1099, align 1
  %1101 = zext i8 %1100 to i32
  %1102 = shl nuw nsw i32 %1101, 2
  %1103 = call noalias align 64 ptr @__kmalloc(i32 noundef %1102, i32 noundef 3264) #12
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1238, label %1105

1105:                                             ; preds = %1098
  %1106 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4
  %1107 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 2
  %1108 = load i8, ptr %1107, align 2
  %1109 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 1
  %1110 = load i8, ptr %1109, align 1
  %1111 = load i8, ptr %1106, align 4
  %1112 = load i8, ptr %10, align 2
  %1113 = load i8, ptr %12, align 4
  %1114 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  %1115 = icmp eq i8 %1100, 0
  br i1 %1115, label %1141, label %1116

1116:                                             ; preds = %1105
  %1117 = zext i8 %1110 to i32
  %1118 = shl nuw nsw i32 %1117, 8
  %1119 = zext i8 %1108 to i32
  %1120 = shl nuw nsw i32 %1119, 16
  %1121 = or i32 %1118, %1120
  %1122 = zext i8 %1111 to i32
  %1123 = or i32 %1121, %1122
  br label %1124

1124:                                             ; preds = %1134, %1116
  %1125 = phi ptr [ %1135, %1134 ], [ %1103, %1116 ]
  %1126 = phi i32 [ %1137, %1134 ], [ %1102, %1116 ]
  %1127 = phi i32 [ %1136, %1134 ], [ %1123, %1116 ]
  %1128 = zext i32 %1127 to i64
  %1129 = call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %1128, i32 noundef %1126, ptr noundef %1125) #10
  %1130 = icmp slt i32 %1129, 0
  br i1 %1130, label %1139, label %1131

1131:                                             ; preds = %1124
  %1132 = add nsw i32 %1129, -1
  %1133 = icmp ult i32 %1132, %1126
  br i1 %1133, label %1134, label %1139

1134:                                             ; preds = %1131
  %1135 = getelementptr i8, ptr %1125, i32 %1129
  %1136 = add i32 %1129, %1127
  %1137 = sub i32 %1126, %1129
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1141, label %1124

1139:                                             ; preds = %1131, %1124
  %1140 = phi i32 [ %1129, %1124 ], [ -5, %1131 ]
  store i8 %1112, ptr %10, align 2
  store i8 %1113, ptr %12, align 4
  store i8 %1114, ptr %14, align 1
  br label %1234

1141:                                             ; preds = %1134, %1105
  store i8 %1112, ptr %10, align 2
  store i8 %1113, ptr %12, align 4
  store i8 %1114, ptr %14, align 1
  %1142 = load i32, ptr %1103, align 64
  %1143 = lshr i32 %1142, 8
  %1144 = trunc i32 %1143 to i8
  %1145 = and i32 %1142, 268435456
  %1146 = icmp eq i32 %1145, 0
  %1147 = load ptr, ptr %205, align 4
  %1148 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1147, i32 0, i32 3
  %1149 = select i1 %1146, i8 4, i8 8
  store i8 %1149, ptr %1148, align 8
  %1150 = load i32, ptr %1103, align 64
  %1151 = lshr i32 %1150, 27
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 4
  %1154 = load ptr, ptr %205, align 4
  %1155 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1154, i32 0, i32 4
  store i8 %1153, ptr %1155, align 1
  %1156 = getelementptr i32, ptr %1103, i32 3
  %1157 = load i32, ptr %1156, align 4
  %1158 = lshr i32 %1157, 7
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 31
  %1161 = icmp eq i8 %1160, 0
  br i1 %1161, label %1162, label %1177

1162:                                             ; preds = %1141
  %1163 = getelementptr i32, ptr %1103, i32 4
  %1164 = load i32, ptr %1163, align 16
  %1165 = lshr i32 %1164, 27
  %1166 = trunc i32 %1165 to i8
  %1167 = icmp eq i8 %1166, 0
  br i1 %1167, label %1168, label %1177

1168:                                             ; preds = %1162
  %1169 = lshr i32 %1164, 17
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 31
  %1172 = icmp eq i8 %1171, 0
  br i1 %1172, label %1173, label %1177

1173:                                             ; preds = %1168
  %1174 = lshr i32 %1164, 7
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 31
  br label %1177

1177:                                             ; preds = %1173, %1168, %1162, %1141
  %1178 = phi i8 [ %1171, %1168 ], [ %1176, %1173 ], [ %1166, %1162 ], [ %1160, %1141 ]
  %1179 = add nsw i8 %1178, -1
  %1180 = or i8 %1179, 1
  %1181 = add nsw i8 %1180, 1
  %1182 = load ptr, ptr %205, align 4
  %1183 = getelementptr %struct.spi_nor_flash_parameter, ptr %1182, i32 0, i32 6, i32 15
  call void @spi_nor_set_read_settings(ptr noundef %1183, i8 noundef zeroext 0, i8 noundef zeroext %1181, i8 noundef zeroext %1144, i32 noundef 17303560) #10
  br label %1234

1184:                                             ; preds = %437
  %1185 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 3
  %1186 = load i8, ptr %1185, align 1
  %1187 = zext i8 %1186 to i32
  %1188 = shl nuw nsw i32 %1187, 2
  %1189 = call noalias align 64 ptr @__kmalloc(i32 noundef %1188, i32 noundef 3264) #12
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1238, label %1191

1191:                                             ; preds = %1184
  %1192 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4
  %1193 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 2
  %1194 = load i8, ptr %1193, align 2
  %1195 = getelementptr %struct.sfdp_parameter_header, ptr %129, i32 %438, i32 4, i32 1
  %1196 = load i8, ptr %1195, align 1
  %1197 = load i8, ptr %1192, align 4
  %1198 = load i8, ptr %10, align 2
  %1199 = load i8, ptr %12, align 4
  %1200 = load i8, ptr %14, align 1
  store i8 90, ptr %10, align 2
  store i8 3, ptr %12, align 4
  store i8 8, ptr %14, align 1
  %1201 = icmp eq i8 %1186, 0
  br i1 %1201, label %1227, label %1202

1202:                                             ; preds = %1191
  %1203 = zext i8 %1196 to i32
  %1204 = shl nuw nsw i32 %1203, 8
  %1205 = zext i8 %1194 to i32
  %1206 = shl nuw nsw i32 %1205, 16
  %1207 = or i32 %1204, %1206
  %1208 = zext i8 %1197 to i32
  %1209 = or i32 %1207, %1208
  br label %1210

1210:                                             ; preds = %1220, %1202
  %1211 = phi ptr [ %1221, %1220 ], [ %1189, %1202 ]
  %1212 = phi i32 [ %1223, %1220 ], [ %1188, %1202 ]
  %1213 = phi i32 [ %1222, %1220 ], [ %1209, %1202 ]
  %1214 = zext i32 %1213 to i64
  %1215 = call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %1214, i32 noundef %1212, ptr noundef %1211) #10
  %1216 = icmp slt i32 %1215, 0
  br i1 %1216, label %1225, label %1217

1217:                                             ; preds = %1210
  %1218 = add nsw i32 %1215, -1
  %1219 = icmp ult i32 %1218, %1212
  br i1 %1219, label %1220, label %1225

1220:                                             ; preds = %1217
  %1221 = getelementptr i8, ptr %1211, i32 %1215
  %1222 = add i32 %1215, %1213
  %1223 = sub i32 %1212, %1215
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1227, label %1210

1225:                                             ; preds = %1217, %1210
  %1226 = phi i32 [ %1215, %1210 ], [ -5, %1217 ]
  store i8 %1198, ptr %10, align 2
  store i8 %1199, ptr %12, align 4
  store i8 %1200, ptr %14, align 1
  br label %1234

1227:                                             ; preds = %1220, %1191
  store i8 %1198, ptr %10, align 2
  store i8 %1199, ptr %12, align 4
  store i8 %1200, ptr %14, align 1
  %1228 = getelementptr i32, ptr %1189, i32 22
  %1229 = load i32, ptr %1228, align 8
  %1230 = icmp sgt i32 %1229, -1
  br i1 %1230, label %1234, label %1231

1231:                                             ; preds = %1227
  %1232 = load i32, ptr %436, align 4
  %1233 = or i32 %1232, 16384
  store i32 %1233, ptr %436, align 4
  br label %1234

1234:                                             ; preds = %1231, %1227, %1225, %1177, %1139, %1095, %974, %893, %830, %780, %757, %593, %590, %488
  %1235 = phi ptr [ %452, %780 ], [ %452, %757 ], [ %452, %593 ], [ %452, %590 ], [ %452, %488 ], [ %796, %1095 ], [ %796, %974 ], [ %796, %893 ], [ %796, %830 ], [ %1103, %1177 ], [ %1103, %1139 ], [ %1189, %1231 ], [ %1189, %1227 ], [ %1189, %1225 ]
  %1236 = phi i32 [ 0, %780 ], [ -22, %757 ], [ -22, %593 ], [ %592, %590 ], [ %489, %488 ], [ 0, %1095 ], [ 0, %974 ], [ 0, %893 ], [ %831, %830 ], [ 0, %1177 ], [ %1140, %1139 ], [ 0, %1231 ], [ 0, %1227 ], [ %1226, %1225 ]
  call void @kfree(ptr noundef nonnull %1235) #10
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1245, label %1238

1238:                                             ; preds = %1234, %1184, %1098, %794, %790, %783, %447
  %1239 = load i8, ptr %440, align 1
  %1240 = zext i8 %1239 to i32
  %1241 = shl nuw nsw i32 %1240, 8
  %1242 = load i8, ptr %439, align 8
  %1243 = zext i8 %1242 to i32
  %1244 = or i32 %1241, %1243
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %1244) #13
  br label %1245

1245:                                             ; preds = %1238, %1234, %437
  %1246 = add nuw nsw i32 %438, 1
  %1247 = load i8, ptr %74, align 2
  %1248 = zext i8 %1247 to i32
  %1249 = icmp ult i32 %1246, %1248
  br i1 %1249, label %437, label %1250

1250:                                             ; preds = %1245, %432
  call fastcc void @spi_nor_post_sfdp_fixups(ptr noundef %0)
  br label %1251

1251:                                             ; preds = %1250, %429, %427, %163, %142, %128, %101
  %1252 = phi ptr [ %129, %163 ], [ %129, %429 ], [ %129, %1250 ], [ %129, %142 ], [ %129, %128 ], [ %80, %101 ], [ %129, %427 ]
  %1253 = phi i32 [ %164, %163 ], [ %430, %429 ], [ 0, %1250 ], [ -12, %142 ], [ -12, %128 ], [ %102, %101 ], [ %428, %427 ]
  call void @kfree(ptr noundef %1252) #10
  br label %1254

1254:                                             ; preds = %1251, %77, %41, %34, %31, %1
  %1255 = phi i32 [ %1253, %1251 ], [ %32, %31 ], [ -22, %34 ], [ -22, %41 ], [ -12, %77 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %1255
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_nor_post_sfdp_fixups(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.spi_nor_fixups, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %0) #10
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.flash_info, ptr %16, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.spi_nor_fixups, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %0) #10
  br label %25

25:                                               ; preds = %24, %20, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_hwcaps_read2cmd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_init_uniform_erase_map(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @spi_nor_map_cmp_erase_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_nor_regions_sort_erase_types(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2
  %6 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 0, i32 4
  %7 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 1
  %8 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 1, i32 4
  %9 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 2
  %10 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 2, i32 4
  %11 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 3
  %12 = getelementptr %struct.spi_nor_erase_map, ptr %0, i32 0, i32 2, i32 3, i32 4
  br label %13

13:                                               ; preds = %66, %4
  %14 = phi ptr [ %2, %4 ], [ %71, %66 ]
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i8
  %17 = and i8 %16, 15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %66, label %19

19:                                               ; preds = %13
  %20 = zext i8 %17 to i32
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %6, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %20
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i8 [ 0, %19 ], [ %29, %23 ]
  %32 = load i32, ptr %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %8, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %20
  %39 = icmp eq i32 %38, 0
  %40 = or i8 %31, 2
  %41 = select i1 %39, i8 %31, i8 %40
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i8 [ %31, %30 ], [ %41, %34 ]
  %44 = load i32, ptr %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %10, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %20
  %51 = icmp eq i32 %50, 0
  %52 = or i8 %43, 4
  %53 = select i1 %51, i8 %43, i8 %52
  br label %54

54:                                               ; preds = %46, %42
  %55 = phi i8 [ %43, %42 ], [ %53, %46 ]
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr %12, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %20
  %63 = icmp eq i32 %62, 0
  %64 = or i8 %55, 8
  %65 = select i1 %63, i8 %55, i8 %64
  br label %66

66:                                               ; preds = %58, %54, %13
  %67 = phi i8 [ 0, %13 ], [ %55, %54 ], [ %65, %58 ]
  %68 = and i64 %15, -16
  %69 = zext i8 %67 to i64
  %70 = or i64 %68, %69
  store i64 %70, ptr %14, align 8
  %71 = tail call ptr @spi_nor_region_next(ptr noundef nonnull %14) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %13

73:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_post_bfpt_fixups(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr2_bit1_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr1_bit6_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr2_bit7_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_erase_type(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_nor_region_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_pp_settings(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_read_settings(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

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
