; ModuleID = '/llk/IR/block/partitions/msdos.c_pt.bc'
source_filename = "../block/partitions/msdos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.85 = type { i8, ptr }
%struct.Sector = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.4, %union.anon.45, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.45 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.fat_boot_sector = type { [3 x i8], [8 x i8], [2 x i8], i8, i16, i8, [2 x i8], [2 x i8], i8, i16, i16, i16, i32, i32, %union.anon.82 }
%union.anon.82 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i16, [2 x i8], i32, i16, i16, [6 x i16], i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.anon.79 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@.str = private unnamed_addr constant [7 x i8] c" [AIX]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[DM]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[EZD]\00", align 1
@subtypes = internal unnamed_addr constant [8 x %struct.anon.85] [%struct.anon.85 { i8 -91, ptr @parse_freebsd }, %struct.anon.85 { i8 -87, ptr @parse_netbsd }, %struct.anon.85 { i8 -90, ptr @parse_openbsd }, %struct.anon.85 { i8 -127, ptr @parse_minix }, %struct.anon.85 { i8 99, ptr @parse_unixware }, %struct.anon.85 { i8 -126, ptr @parse_solaris_x86 }, %struct.anon.85 { i8 -65, ptr @parse_solaris_x86 }, %struct.anon.85 zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%08x-%02x\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msdos_partition(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = alloca [44 x i8], align 1
  %4 = alloca %struct.Sector, align 4
  %5 = alloca [44 x i8], align 1
  %6 = alloca %struct.Sector, align 4
  %7 = alloca %struct.Sector, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 32, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 512, i32 %14
  br label %17

17:                                               ; preds = %12, %1
  %18 = phi i32 [ 512, %1 ], [ %16, %12 ]
  %19 = lshr i32 %18, 9
  %20 = zext i32 %19 to i64
  %21 = call ptr @read_part_sector(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %7) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %569, label %23

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %24 = load i8, ptr %21, align 1
  %25 = icmp eq i8 %24, -55
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %21, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, -62
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %21, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, -44
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %21, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, -63
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %21, i32 450
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %41 [
    i8 -126, label %69
    i8 -3, label %69
    i8 -125, label %69
    i8 -114, label %69
    i8 5, label %69
    i8 15, label %69
    i8 -123, label %69
  ]

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %21, i32 466
  %43 = load i8, ptr %42, align 1
  switch i8 %43, label %44 [
    i8 -126, label %69
    i8 -3, label %69
    i8 -125, label %69
    i8 -114, label %69
    i8 5, label %69
    i8 15, label %69
    i8 -123, label %69
  ]

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %21, i32 482
  %46 = load i8, ptr %45, align 1
  switch i8 %46, label %47 [
    i8 -126, label %69
    i8 -3, label %69
    i8 -125, label %69
    i8 -114, label %69
    i8 5, label %69
    i8 15, label %69
    i8 -123, label %69
  ]

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %21, i32 498
  %49 = load i8, ptr %48, align 1
  switch i8 %49, label %50 [
    i8 -126, label %69
    i8 -3, label %69
    i8 -125, label %69
    i8 -114, label %69
    i8 5, label %69
    i8 15, label %69
    i8 -123, label %69
  ]

50:                                               ; preds = %47
  %51 = call ptr @read_part_sector(ptr noundef %0, i64 noundef 7, ptr noundef nonnull %6) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load i8, ptr %51, align 1
  %55 = icmp eq i8 %54, 95
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %51, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 76
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %51, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 86
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %51, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 77
  %68 = zext i1 %67 to i32
  br label %70

69:                                               ; preds = %50, %47, %47, %47, %47, %47, %47, %47, %44, %44, %44, %44, %44, %44, %44, %41, %41, %41, %41, %41, %41, %41, %38, %38, %38, %38, %38, %38, %38, %34, %30, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %96

70:                                               ; preds = %64, %60, %56, %53
  %71 = phi i32 [ 0, %60 ], [ 0, %56 ], [ 0, %53 ], [ %68, %64 ]
  %72 = load i32, ptr %6, align 4
  %73 = insertvalue [1 x i32] poison, i32 %72, 0
  call fastcc void @put_dev_sector([1 x i32] %73) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %7, align 4
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82, !prof !9

82:                                               ; preds = %75
  %83 = add i32 %79, -1
  %84 = inttoptr i32 %83 to ptr
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi ptr [ %77, %75 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #9, !srcloc !11
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #9, !srcloc !12
  %89 = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  call void @__put_page(ptr noundef %86) #9
  br label %92

92:                                               ; preds = %91, %85
  %93 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 @strlcat(ptr noundef %94, ptr noundef nonnull @.str, i32 noundef 4096) #9
  br label %569

96:                                               ; preds = %70, %69
  %97 = getelementptr i8, ptr %21, i32 510
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 85
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %21, i32 511
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, -86
  br i1 %103, label %121, label %104

104:                                              ; preds = %100, %96
  %105 = load i32, ptr %7, align 4
  %106 = inttoptr i32 %105 to ptr
  %107 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111, !prof !9

111:                                              ; preds = %104
  %112 = add i32 %108, -1
  %113 = inttoptr i32 %112 to ptr
  br label %114

114:                                              ; preds = %111, %104
  %115 = phi ptr [ %106, %104 ], [ %113, %111 ]
  %116 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #9, !srcloc !11
  %117 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #9, !srcloc !12
  %118 = extractvalue { i32, i32 } %117, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %569

120:                                              ; preds = %114
  call void @__put_page(ptr noundef %115) #9
  br label %569

121:                                              ; preds = %100
  %122 = getelementptr i8, ptr %21, i32 446
  %123 = load i8, ptr %122, align 1
  switch i8 %123, label %124 [
    i8 0, label %158
    i8 -128, label %158
  ]

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.fat_boot_sector, ptr %21, i32 0, i32 4
  %126 = load i16, ptr %125, align 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.fat_boot_sector, ptr %21, i32 0, i32 5
  %130 = load i8, ptr %129, align 4
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.fat_boot_sector, ptr %21, i32 0, i32 8
  %134 = load i8, ptr %133, align 1
  switch i8 %134, label %141 [
    i8 -1, label %135
    i8 -2, label %135
    i8 -3, label %135
    i8 -4, label %135
    i8 -5, label %135
    i8 -6, label %135
    i8 -7, label %135
    i8 -8, label %135
    i8 -16, label %135
  ]

135:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132, %132
  %136 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  %137 = load ptr, ptr %136, align 4
  %138 = call i32 @strlcat(ptr noundef %137, ptr noundef nonnull @.str.1, i32 noundef 4096) #9
  %139 = load i32, ptr %7, align 4
  %140 = insertvalue [1 x i32] poison, i32 %139, 0
  call fastcc void @put_dev_sector([1 x i32] %140)
  br label %569

141:                                              ; preds = %164, %161, %158, %132, %128, %124
  %142 = load i32, ptr %7, align 4
  %143 = inttoptr i32 %142 to ptr
  %144 = getelementptr inbounds %struct.page, ptr %143, i32 0, i32 1
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148, !prof !9

148:                                              ; preds = %141
  %149 = add i32 %145, -1
  %150 = inttoptr i32 %149 to ptr
  br label %151

151:                                              ; preds = %148, %141
  %152 = phi ptr [ %143, %141 ], [ %150, %148 ]
  %153 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #9, !srcloc !11
  %154 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #9, !srcloc !12
  %155 = extractvalue { i32, i32 } %154, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %569

157:                                              ; preds = %151
  call void @__put_page(ptr noundef %152) #9
  br label %569

158:                                              ; preds = %121, %121
  %159 = getelementptr i8, ptr %21, i32 462
  %160 = load i8, ptr %159, align 1
  switch i8 %160, label %141 [
    i8 0, label %161
    i8 -128, label %161
  ]

161:                                              ; preds = %158, %158
  %162 = getelementptr i8, ptr %21, i32 478
  %163 = load i8, ptr %162, align 1
  switch i8 %163, label %141 [
    i8 0, label %164
    i8 -128, label %164
  ]

164:                                              ; preds = %161, %161
  %165 = getelementptr i8, ptr %21, i32 494
  %166 = load i8, ptr %165, align 1
  switch i8 %166, label %141 [
    i8 0, label %167
    i8 -128, label %167
  ]

167:                                              ; preds = %164, %164
  %168 = getelementptr i8, ptr %21, i32 450
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, -18
  br i1 %170, label %171, label %188

171:                                              ; preds = %196, %192, %188, %167
  %172 = load i32, ptr %7, align 4
  %173 = inttoptr i32 %172 to ptr
  %174 = getelementptr inbounds %struct.page, ptr %173, i32 0, i32 1
  %175 = load volatile i32, ptr %174, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178, !prof !9

178:                                              ; preds = %171
  %179 = add i32 %175, -1
  %180 = inttoptr i32 %179 to ptr
  br label %181

181:                                              ; preds = %178, %171
  %182 = phi ptr [ %173, %171 ], [ %180, %178 ]
  %183 = getelementptr inbounds %struct.page, ptr %182, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %183) #9, !srcloc !11
  %184 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %183, ptr %183, i32 1, ptr elementtype(i32) %183) #9, !srcloc !12
  %185 = extractvalue { i32, i32 } %184, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %569

187:                                              ; preds = %181
  call void @__put_page(ptr noundef %182) #9
  br label %569

188:                                              ; preds = %167
  %189 = getelementptr i8, ptr %21, i32 466
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, -18
  br i1 %191, label %171, label %192

192:                                              ; preds = %188
  %193 = getelementptr i8, ptr %21, i32 482
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, -18
  br i1 %195, label %171, label %196

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %21, i32 498
  %198 = load i8, ptr %197, align 1
  %199 = icmp eq i8 %198, -18
  br i1 %199, label %171, label %200

200:                                              ; preds = %196
  %201 = getelementptr i8, ptr %21, i32 440
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 3
  store i32 5, ptr %203, align 4
  %204 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 4
  %205 = call i64 @llvm.umax.i64(i64 %20, i64 2)
  %206 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 2
  %207 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 1
  %208 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  br label %209

209:                                              ; preds = %454, %200
  %210 = phi ptr [ %122, %200 ], [ %456, %454 ]
  %211 = phi i32 [ 1, %200 ], [ %455, %454 ]
  %212 = getelementptr inbounds %struct.msdos_partition, ptr %210, i32 0, i32 8
  %213 = load i32, ptr %212, align 1
  %214 = zext i32 %213 to i64
  %215 = mul nuw nsw i64 %214, %20
  %216 = getelementptr inbounds %struct.msdos_partition, ptr %210, i32 0, i32 9
  %217 = load i32, ptr %216, align 1
  %218 = zext i32 %217 to i64
  %219 = mul nuw nsw i64 %218, %20
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %454, label %221

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.msdos_partition, ptr %210, i32 0, i32 4
  %223 = load i8, ptr %222, align 1
  switch i8 %223, label %416 [
    i8 5, label %224
    i8 15, label %224
    i8 -123, label %224
  ]

224:                                              ; preds = %221, %221, %221
  %225 = load i32, ptr %204, align 4
  %226 = icmp sgt i32 %225, %211
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = call i64 @llvm.umin.i64(i64 %219, i64 %205)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %5, i8 0, i32 44, i1 false) #9, !annotation !8
  %229 = load ptr, ptr %206, align 4
  %230 = getelementptr %struct.anon.79, ptr %229, i32 %211
  store i64 %215, ptr %230, align 8
  %231 = load ptr, ptr %206, align 4
  %232 = getelementptr %struct.anon.79, ptr %231, i32 %211, i32 1
  store i64 %228, ptr %232, align 8
  %233 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %207, i32 noundef %211) #9
  %234 = load ptr, ptr %208, align 4
  %235 = call i32 @strlcat(ptr noundef %234, ptr noundef nonnull %5, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #9
  br label %236

236:                                              ; preds = %227, %224
  %237 = load ptr, ptr %208, align 4
  %238 = call i32 @strlcat(ptr noundef %237, ptr noundef nonnull @.str.2, i32 noundef 4096) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %239 = load ptr, ptr %0, align 4
  %240 = getelementptr inbounds %struct.gendisk, ptr %239, i32 0, i32 9
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.request_queue, ptr %241, i32 0, i32 32, i32 9
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  %247 = lshr i32 %245, 9
  %248 = select i1 %246, i32 1, i32 %247
  br label %249

249:                                              ; preds = %243, %236
  %250 = phi i32 [ 1, %236 ], [ %248, %243 ]
  %251 = zext i32 %250 to i64
  %252 = add nuw nsw i64 %219, %215
  br label %253

253:                                              ; preds = %395, %249
  %254 = phi i32 [ 1, %249 ], [ %396, %395 ]
  %255 = phi i64 [ %219, %249 ], [ %378, %395 ]
  %256 = phi i64 [ %215, %249 ], [ %374, %395 ]
  %257 = load i32, ptr %203, align 4
  %258 = load i32, ptr %204, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %415, label %260

260:                                              ; preds = %253
  %261 = call ptr @read_part_sector(ptr noundef %0, i64 noundef %256, ptr noundef nonnull %4) #9
  %262 = icmp eq ptr %261, null
  br i1 %262, label %415, label %263

263:                                              ; preds = %260
  %264 = getelementptr i8, ptr %261, i32 510
  %265 = load i8, ptr %264, align 1
  %266 = icmp eq i8 %265, 85
  br i1 %266, label %267, label %398

267:                                              ; preds = %263
  %268 = getelementptr i8, ptr %261, i32 511
  %269 = load i8, ptr %268, align 1
  %270 = icmp eq i8 %269, -86
  br i1 %270, label %271, label %398

271:                                              ; preds = %267
  %272 = getelementptr i8, ptr %261, i32 446
  br label %273

273:                                              ; preds = %332, %271
  %274 = phi i32 [ 0, %271 ], [ %334, %332 ]
  %275 = phi i32 [ %254, %271 ], [ %333, %332 ]
  %276 = phi ptr [ %272, %271 ], [ %335, %332 ]
  %277 = getelementptr inbounds %struct.msdos_partition, ptr %276, i32 0, i32 9
  %278 = load i32, ptr %277, align 1
  %279 = zext i32 %278 to i64
  %280 = icmp eq i32 %278, 0
  br i1 %280, label %332, label %281

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.msdos_partition, ptr %276, i32 0, i32 4
  %283 = load i8, ptr %282, align 1
  switch i8 %283, label %284 [
    i8 5, label %332
    i8 15, label %332
    i8 -123, label %332
  ]

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.msdos_partition, ptr %276, i32 0, i32 8
  %286 = load i32, ptr %285, align 1
  %287 = zext i32 %286 to i64
  %288 = mul nuw nsw i64 %287, %251
  %289 = mul nuw nsw i64 %279, %251
  %290 = add i64 %288, %256
  %291 = icmp ugt i32 %274, 1
  br i1 %291, label %292, label %300

292:                                              ; preds = %284
  %293 = add nuw nsw i64 %288, %289
  %294 = icmp ugt i64 %293, %255
  %295 = icmp ult i64 %290, %215
  %296 = select i1 %294, i1 true, i1 %295
  %297 = add i64 %290, %289
  %298 = icmp ugt i64 %297, %252
  %299 = select i1 %296, i1 true, i1 %298
  br i1 %299, label %332, label %300

300:                                              ; preds = %292, %284
  %301 = load i32, ptr %203, align 4
  %302 = load i32, ptr %204, align 4
  %303 = icmp sgt i32 %302, %301
  br i1 %303, label %304, label %313

304:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %3, i8 0, i32 44, i1 false) #9, !annotation !8
  %305 = load ptr, ptr %206, align 4
  %306 = getelementptr %struct.anon.79, ptr %305, i32 %301
  store i64 %290, ptr %306, align 8
  %307 = load ptr, ptr %206, align 4
  %308 = getelementptr %struct.anon.79, ptr %307, i32 %301, i32 1
  store i64 %289, ptr %308, align 8
  %309 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %207, i32 noundef %301) #9
  %310 = load ptr, ptr %208, align 4
  %311 = call i32 @strlcat(ptr noundef %310, ptr noundef nonnull %3, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  %312 = load i32, ptr %203, align 4
  br label %313

313:                                              ; preds = %304, %300
  %314 = phi i32 [ %301, %300 ], [ %312, %304 ]
  %315 = load ptr, ptr %206, align 4
  %316 = getelementptr %struct.anon.79, ptr %315, i32 %314, i32 4
  %317 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %316, i32 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %202, i32 noundef %314) #9
  %318 = getelementptr %struct.anon.79, ptr %315, i32 %314, i32 4, i32 1
  store i8 0, ptr %318, align 1
  %319 = load ptr, ptr %206, align 4
  %320 = getelementptr %struct.anon.79, ptr %319, i32 %314, i32 3
  store i8 1, ptr %320, align 4
  %321 = load i8, ptr %282, align 1
  %322 = icmp eq i8 %321, -3
  br i1 %322, label %323, label %327

323:                                              ; preds = %313
  %324 = load ptr, ptr %206, align 4
  %325 = load i32, ptr %203, align 4
  %326 = getelementptr %struct.anon.79, ptr %324, i32 %325, i32 2
  store i32 1, ptr %326, align 8
  br label %327

327:                                              ; preds = %323, %313
  %328 = load i32, ptr %203, align 4
  %329 = add i32 %328, 1
  store i32 %329, ptr %203, align 4
  %330 = load i32, ptr %204, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %398, label %332

332:                                              ; preds = %327, %292, %281, %281, %281, %273
  %333 = phi i32 [ 0, %327 ], [ %275, %292 ], [ %275, %273 ], [ %275, %281 ], [ %275, %281 ], [ %275, %281 ]
  %334 = add nuw nsw i32 %274, 1
  %335 = getelementptr %struct.msdos_partition, ptr %276, i32 1
  %336 = icmp eq i32 %334, 4
  br i1 %336, label %337, label %273

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.msdos_partition, ptr %276, i32 0, i32 9
  %339 = getelementptr %struct.msdos_partition, ptr %276, i32 -3, i32 9
  %340 = load i32, ptr %339, align 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %337
  %343 = getelementptr %struct.msdos_partition, ptr %276, i32 -3
  %344 = getelementptr %struct.msdos_partition, ptr %276, i32 -3, i32 4
  %345 = load i8, ptr %344, align 1
  switch i8 %345, label %346 [
    i8 5, label %368
    i8 15, label %368
    i8 -123, label %368
  ]

346:                                              ; preds = %342, %337
  %347 = getelementptr %struct.msdos_partition, ptr %276, i32 -2, i32 9
  %348 = load i32, ptr %347, align 1
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %346
  %351 = getelementptr %struct.msdos_partition, ptr %276, i32 -2
  %352 = getelementptr %struct.msdos_partition, ptr %276, i32 -2, i32 4
  %353 = load i8, ptr %352, align 1
  switch i8 %353, label %354 [
    i8 5, label %368
    i8 15, label %368
    i8 -123, label %368
  ]

354:                                              ; preds = %350, %346
  %355 = getelementptr %struct.msdos_partition, ptr %276, i32 -1, i32 9
  %356 = load i32, ptr %355, align 1
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = getelementptr %struct.msdos_partition, ptr %276, i32 -1
  %360 = getelementptr %struct.msdos_partition, ptr %276, i32 -1, i32 4
  %361 = load i8, ptr %360, align 1
  switch i8 %361, label %362 [
    i8 5, label %368
    i8 15, label %368
    i8 -123, label %368
  ]

362:                                              ; preds = %358, %354
  %363 = load i32, ptr %338, align 1
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %398, label %365

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.msdos_partition, ptr %276, i32 0, i32 4
  %367 = load i8, ptr %366, align 1
  switch i8 %367, label %398 [
    i8 5, label %368
    i8 15, label %368
    i8 -123, label %368
  ]

368:                                              ; preds = %365, %365, %365, %358, %358, %358, %350, %350, %350, %342, %342, %342
  %369 = phi ptr [ %343, %342 ], [ %343, %342 ], [ %343, %342 ], [ %351, %350 ], [ %351, %350 ], [ %351, %350 ], [ %359, %358 ], [ %359, %358 ], [ %359, %358 ], [ %276, %365 ], [ %276, %365 ], [ %276, %365 ]
  %370 = getelementptr inbounds %struct.msdos_partition, ptr %369, i32 0, i32 8
  %371 = load i32, ptr %370, align 1
  %372 = zext i32 %371 to i64
  %373 = mul nuw nsw i64 %372, %251
  %374 = add nuw i64 %373, %215
  %375 = getelementptr inbounds %struct.msdos_partition, ptr %369, i32 0, i32 9
  %376 = load i32, ptr %375, align 1
  %377 = zext i32 %376 to i64
  %378 = mul nuw nsw i64 %377, %251
  %379 = load i32, ptr %4, align 4
  %380 = inttoptr i32 %379 to ptr
  %381 = getelementptr inbounds %struct.page, ptr %380, i32 0, i32 1
  %382 = load volatile i32, ptr %381, align 4
  %383 = and i32 %382, 1
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %388, label %385, !prof !9

385:                                              ; preds = %368
  %386 = add i32 %382, -1
  %387 = inttoptr i32 %386 to ptr
  br label %388

388:                                              ; preds = %385, %368
  %389 = phi ptr [ %380, %368 ], [ %387, %385 ]
  %390 = getelementptr inbounds %struct.page, ptr %389, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %390) #9, !srcloc !11
  %391 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %390, ptr %390, i32 1, ptr elementtype(i32) %390) #9, !srcloc !12
  %392 = extractvalue { i32, i32 } %391, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %388
  call void @__put_page(ptr noundef %389) #9
  br label %395

395:                                              ; preds = %394, %388
  %396 = add i32 %333, 1
  %397 = icmp sgt i32 %396, 100
  br i1 %397, label %415, label %253

398:                                              ; preds = %365, %362, %327, %267, %263
  %399 = load i32, ptr %4, align 4
  %400 = inttoptr i32 %399 to ptr
  %401 = getelementptr inbounds %struct.page, ptr %400, i32 0, i32 1
  %402 = load volatile i32, ptr %401, align 4
  %403 = and i32 %402, 1
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %408, label %405, !prof !9

405:                                              ; preds = %398
  %406 = add i32 %402, -1
  %407 = inttoptr i32 %406 to ptr
  br label %408

408:                                              ; preds = %405, %398
  %409 = phi ptr [ %400, %398 ], [ %407, %405 ]
  %410 = getelementptr inbounds %struct.page, ptr %409, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %410) #9, !srcloc !11
  %411 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %410, ptr %410, i32 1, ptr elementtype(i32) %410) #9, !srcloc !12
  %412 = extractvalue { i32, i32 } %411, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  call void @__put_page(ptr noundef %409) #9
  br label %415

415:                                              ; preds = %414, %408, %395, %260, %253
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %450

416:                                              ; preds = %221
  %417 = load i32, ptr %204, align 4
  %418 = icmp sgt i32 %417, %211
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false) #9, !annotation !8
  %420 = load ptr, ptr %206, align 4
  %421 = getelementptr %struct.anon.79, ptr %420, i32 %211
  store i64 %215, ptr %421, align 8
  %422 = load ptr, ptr %206, align 4
  %423 = getelementptr %struct.anon.79, ptr %422, i32 %211, i32 1
  store i64 %219, ptr %423, align 8
  %424 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %207, i32 noundef %211) #9
  %425 = load ptr, ptr %208, align 4
  %426 = call i32 @strlcat(ptr noundef %425, ptr noundef nonnull %2, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  br label %427

427:                                              ; preds = %419, %416
  %428 = load ptr, ptr %206, align 4
  %429 = getelementptr %struct.anon.79, ptr %428, i32 %211, i32 4
  %430 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %429, i32 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %202, i32 noundef %211) #9
  %431 = getelementptr %struct.anon.79, ptr %428, i32 %211, i32 4, i32 1
  store i8 0, ptr %431, align 1
  %432 = load ptr, ptr %206, align 4
  %433 = getelementptr %struct.anon.79, ptr %432, i32 %211, i32 3
  store i8 1, ptr %433, align 4
  %434 = load i8, ptr %222, align 1
  %435 = icmp eq i8 %434, -3
  br i1 %435, label %436, label %440

436:                                              ; preds = %427
  %437 = load ptr, ptr %206, align 4
  %438 = getelementptr %struct.anon.79, ptr %437, i32 %211, i32 2
  store i32 1, ptr %438, align 8
  %439 = load i8, ptr %222, align 1
  br label %440

440:                                              ; preds = %436, %427
  %441 = phi i8 [ %439, %436 ], [ %434, %427 ]
  %442 = icmp eq i8 %441, 84
  br i1 %442, label %443, label %447

443:                                              ; preds = %440
  %444 = load ptr, ptr %208, align 4
  %445 = call i32 @strlcat(ptr noundef %444, ptr noundef nonnull @.str.4, i32 noundef 4096) #9
  %446 = load i8, ptr %222, align 1
  br label %447

447:                                              ; preds = %443, %440
  %448 = phi i8 [ %446, %443 ], [ %441, %440 ]
  %449 = icmp eq i8 %448, 85
  br i1 %449, label %450, label %454

450:                                              ; preds = %447, %415
  %451 = phi ptr [ @.str.3, %415 ], [ @.str.5, %447 ]
  %452 = load ptr, ptr %208, align 4
  %453 = call i32 @strlcat(ptr noundef %452, ptr noundef nonnull %451, i32 noundef 4096) #9
  br label %454

454:                                              ; preds = %450, %447, %209
  %455 = add nuw nsw i32 %211, 1
  %456 = getelementptr %struct.msdos_partition, ptr %210, i32 1
  %457 = icmp eq i32 %455, 5
  br i1 %457, label %458, label %209

458:                                              ; preds = %454
  %459 = load ptr, ptr %208, align 4
  %460 = call i32 @strlcat(ptr noundef %459, ptr noundef nonnull @.str.1, i32 noundef 4096) #9
  %461 = getelementptr i8, ptr %21, i32 458
  %462 = load i32, ptr %461, align 1
  %463 = zext i32 %462 to i64
  %464 = icmp eq i32 %462, 0
  br i1 %464, label %483, label %465

465:                                              ; preds = %458
  %466 = getelementptr i8, ptr %21, i32 450
  %467 = load i8, ptr %466, align 1
  switch i8 %467, label %483 [
    i8 -91, label %474
    i8 -87, label %468
    i8 -90, label %469
    i8 -127, label %470
    i8 99, label %471
    i8 -126, label %472
    i8 -65, label %473
  ]

468:                                              ; preds = %465
  br label %474

469:                                              ; preds = %465
  br label %474

470:                                              ; preds = %465
  br label %474

471:                                              ; preds = %465
  br label %474

472:                                              ; preds = %465
  br label %474

473:                                              ; preds = %465
  br label %474

474:                                              ; preds = %473, %472, %471, %470, %469, %468, %465
  %475 = phi i32 [ 0, %465 ], [ 1, %468 ], [ 2, %469 ], [ 3, %470 ], [ 4, %471 ], [ 5, %472 ], [ 6, %473 ]
  %476 = getelementptr [8 x %struct.anon.85], ptr @subtypes, i32 0, i32 %475, i32 1
  %477 = load ptr, ptr %476, align 4
  %478 = getelementptr i8, ptr %21, i32 454
  %479 = load i32, ptr %478, align 1
  %480 = zext i32 %479 to i64
  %481 = mul nuw nsw i64 %480, %20
  %482 = mul nuw nsw i64 %463, %20
  call void %477(ptr noundef %0, i64 noundef %481, i64 noundef %482, i32 noundef 1) #9
  br label %483

483:                                              ; preds = %474, %465, %458
  %484 = getelementptr i8, ptr %21, i32 474
  %485 = load i32, ptr %484, align 1
  %486 = zext i32 %485 to i64
  %487 = icmp eq i32 %485, 0
  br i1 %487, label %506, label %488

488:                                              ; preds = %483
  %489 = getelementptr i8, ptr %21, i32 466
  %490 = load i8, ptr %489, align 1
  switch i8 %490, label %506 [
    i8 -91, label %497
    i8 -87, label %496
    i8 -90, label %495
    i8 -127, label %494
    i8 99, label %493
    i8 -126, label %492
    i8 -65, label %491
  ]

491:                                              ; preds = %488
  br label %497

492:                                              ; preds = %488
  br label %497

493:                                              ; preds = %488
  br label %497

494:                                              ; preds = %488
  br label %497

495:                                              ; preds = %488
  br label %497

496:                                              ; preds = %488
  br label %497

497:                                              ; preds = %496, %495, %494, %493, %492, %491, %488
  %498 = phi i32 [ 0, %488 ], [ 1, %496 ], [ 2, %495 ], [ 3, %494 ], [ 4, %493 ], [ 5, %492 ], [ 6, %491 ]
  %499 = getelementptr [8 x %struct.anon.85], ptr @subtypes, i32 0, i32 %498, i32 1
  %500 = load ptr, ptr %499, align 4
  %501 = getelementptr i8, ptr %21, i32 470
  %502 = load i32, ptr %501, align 1
  %503 = zext i32 %502 to i64
  %504 = mul nuw nsw i64 %503, %20
  %505 = mul nuw nsw i64 %486, %20
  call void %500(ptr noundef %0, i64 noundef %504, i64 noundef %505, i32 noundef 2) #9
  br label %506

506:                                              ; preds = %497, %488, %483
  %507 = getelementptr i8, ptr %21, i32 490
  %508 = load i32, ptr %507, align 1
  %509 = zext i32 %508 to i64
  %510 = icmp eq i32 %508, 0
  br i1 %510, label %529, label %511

511:                                              ; preds = %506
  %512 = getelementptr i8, ptr %21, i32 482
  %513 = load i8, ptr %512, align 1
  switch i8 %513, label %529 [
    i8 -91, label %520
    i8 -87, label %519
    i8 -90, label %518
    i8 -127, label %517
    i8 99, label %516
    i8 -126, label %515
    i8 -65, label %514
  ]

514:                                              ; preds = %511
  br label %520

515:                                              ; preds = %511
  br label %520

516:                                              ; preds = %511
  br label %520

517:                                              ; preds = %511
  br label %520

518:                                              ; preds = %511
  br label %520

519:                                              ; preds = %511
  br label %520

520:                                              ; preds = %519, %518, %517, %516, %515, %514, %511
  %521 = phi i32 [ 0, %511 ], [ 1, %519 ], [ 2, %518 ], [ 3, %517 ], [ 4, %516 ], [ 5, %515 ], [ 6, %514 ]
  %522 = getelementptr [8 x %struct.anon.85], ptr @subtypes, i32 0, i32 %521, i32 1
  %523 = load ptr, ptr %522, align 4
  %524 = getelementptr i8, ptr %21, i32 486
  %525 = load i32, ptr %524, align 1
  %526 = zext i32 %525 to i64
  %527 = mul nuw nsw i64 %526, %20
  %528 = mul nuw nsw i64 %509, %20
  call void %523(ptr noundef %0, i64 noundef %527, i64 noundef %528, i32 noundef 3) #9
  br label %529

529:                                              ; preds = %520, %511, %506
  %530 = getelementptr i8, ptr %21, i32 506
  %531 = load i32, ptr %530, align 1
  %532 = zext i32 %531 to i64
  %533 = icmp eq i32 %531, 0
  br i1 %533, label %552, label %534

534:                                              ; preds = %529
  %535 = getelementptr i8, ptr %21, i32 498
  %536 = load i8, ptr %535, align 1
  switch i8 %536, label %552 [
    i8 -91, label %543
    i8 -87, label %542
    i8 -90, label %541
    i8 -127, label %540
    i8 99, label %539
    i8 -126, label %538
    i8 -65, label %537
  ]

537:                                              ; preds = %534
  br label %543

538:                                              ; preds = %534
  br label %543

539:                                              ; preds = %534
  br label %543

540:                                              ; preds = %534
  br label %543

541:                                              ; preds = %534
  br label %543

542:                                              ; preds = %534
  br label %543

543:                                              ; preds = %542, %541, %540, %539, %538, %537, %534
  %544 = phi i32 [ 0, %534 ], [ 1, %542 ], [ 2, %541 ], [ 3, %540 ], [ 4, %539 ], [ 5, %538 ], [ 6, %537 ]
  %545 = getelementptr [8 x %struct.anon.85], ptr @subtypes, i32 0, i32 %544, i32 1
  %546 = load ptr, ptr %545, align 4
  %547 = getelementptr i8, ptr %21, i32 502
  %548 = load i32, ptr %547, align 1
  %549 = zext i32 %548 to i64
  %550 = mul nuw nsw i64 %549, %20
  %551 = mul nuw nsw i64 %532, %20
  call void %546(ptr noundef %0, i64 noundef %550, i64 noundef %551, i32 noundef 4) #9
  br label %552

552:                                              ; preds = %543, %534, %529
  %553 = load i32, ptr %7, align 4
  %554 = inttoptr i32 %553 to ptr
  %555 = getelementptr inbounds %struct.page, ptr %554, i32 0, i32 1
  %556 = load volatile i32, ptr %555, align 4
  %557 = and i32 %556, 1
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %562, label %559, !prof !9

559:                                              ; preds = %552
  %560 = add i32 %556, -1
  %561 = inttoptr i32 %560 to ptr
  br label %562

562:                                              ; preds = %559, %552
  %563 = phi ptr [ %554, %552 ], [ %561, %559 ]
  %564 = getelementptr inbounds %struct.page, ptr %563, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %564) #9, !srcloc !11
  %565 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %564, ptr %564, i32 1, ptr elementtype(i32) %564) #9, !srcloc !12
  %566 = extractvalue { i32, i32 } %565, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %562
  call void @__put_page(ptr noundef %563) #9
  br label %569

569:                                              ; preds = %568, %562, %187, %181, %157, %151, %135, %120, %114, %92, %17
  %570 = phi i32 [ 0, %92 ], [ 1, %135 ], [ -1, %17 ], [ 0, %114 ], [ 0, %120 ], [ 0, %151 ], [ 0, %157 ], [ 0, %181 ], [ 0, %187 ], [ 1, %562 ], [ 1, %568 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %570
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_dev_sector([1 x i32] %0) unnamed_addr #4 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !9

8:                                                ; preds = %1
  %9 = add i32 %5, -1
  %10 = inttoptr i32 %9 to ptr
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !12
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @__put_page(ptr noundef %12) #9
  br label %18

18:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_freebsd(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_netbsd(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_openbsd(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_minix(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_unixware(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @parse_solaris_x86(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #7 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

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
!10 = !{i64 2148533383}
!11 = !{i64 931318, i64 2148421289, i64 2148421315, i64 2148421362, i64 2148421384, i64 2148421412, i64 2148421432}
!12 = !{i64 2148435745, i64 2148435777, i64 2148435806, i64 2148435840, i64 2148435871, i64 2148435894}
!13 = !{i64 2148533586}
