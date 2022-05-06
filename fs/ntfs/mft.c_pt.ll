; ModuleID = '/llk/IR/fs/ntfs/mft.c_pt.bc'
source_filename = "../fs/ntfs/mft.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.75, %struct.mutex, i32, %union.anon.78 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.75 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%union.anon.78 = type { ptr }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.41, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.42, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.43, ptr, %struct.address_space, %struct.list_head, %union.anon.44, i32, i32, ptr, ptr }
%union.anon.41 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.43 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.44 = type { ptr }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }

@__func__.map_mft_record = private unnamed_addr constant [15 x i8] c"map_mft_record\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"Failed with error code %lu.\00", align 1
@__func__.map_extent_mft_record = private unnamed_addr constant [22 x i8] c"map_extent_mft_record\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Found stale extent mft reference! Corrupt filesystem. Run chkdsk.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to map extent mft record, error code %ld.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate internal buffer.\00", align 1
@__func__.map_mft_record_page = private unnamed_addr constant [20 x i8] c"map_mft_record_page\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"Attempt to read mft record 0x%lx, which is beyond the end of the mft.  This is probably a bug in the ntfs driver.\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Mft record 0x%lx is corrupt.  Run chkdsk.\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @map_mft_record(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 28
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 16
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i64
  %20 = shl i64 %16, %19
  %21 = lshr i64 %20, 12
  %22 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %23 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %24

24:                                               ; preds = %32, %13
  %25 = load volatile i32, ptr %22, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !13
  %29 = load volatile i32, ptr %22, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %25, %24 ], [ %29, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %34 = load i64, ptr %23, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %35 = load volatile i32, ptr %22, align 4
  %36 = icmp eq i32 %35, %33
  br i1 %36, label %37, label %24

37:                                               ; preds = %32
  %38 = zext i8 %18 to i32
  %39 = shl i32 %15, %38
  %40 = trunc i64 %21 to i32
  %41 = and i32 %39, 4095
  %42 = lshr i64 %34, 12
  %43 = trunc i64 %42 to i32
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %57, label %45, !prof !10

45:                                               ; preds = %37
  %46 = icmp ugt i32 %40, %43
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = and i64 %34, 4095
  %49 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %41
  %52 = zext i32 %51 to i64
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47, %45
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record_page, ptr noundef %55, ptr noundef nonnull @.str.4, i32 noundef %56) #4
  br label %155

57:                                               ; preds = %47, %37
  %58 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %59 = load ptr, ptr %58, align 8
  %60 = tail call ptr @read_cache_page(ptr noundef %59, i32 noundef %40, ptr noundef null, ptr noundef null) #4
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %155, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %60, align 4
  %64 = lshr i32 %63, 30
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = icmp ne i32 %64, 3
  %68 = load i32, ptr @movable_zone, align 4
  %69 = icmp ne i32 %68, 2
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call ptr @page_address(ptr noundef %60) #4
  br label %75

73:                                               ; preds = %66, %62
  %74 = tail call ptr @kmap_high(ptr noundef %60) #4
  br label %75

75:                                               ; preds = %73, %71
  %76 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !10

80:                                               ; preds = %75
  %81 = add i32 %77, -1
  br label %84

82:                                               ; preds = %75
  %83 = ptrtoint ptr %60 to i32
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = inttoptr i32 %85 to ptr
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %60, align 4
  %92 = lshr i32 %91, 30
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = icmp ne i32 %92, 3
  %96 = load i32, ptr @movable_zone, align 4
  %97 = icmp ne i32 %96, 2
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %94, %90
  tail call void @kunmap_high(ptr noundef %60) #4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load volatile i32, ptr %76, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104, !prof !10

104:                                              ; preds = %100
  %105 = add i32 %101, -1
  br label %108

106:                                              ; preds = %100
  %107 = ptrtoint ptr %60 to i32
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #4, !srcloc !8
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #4, !srcloc !17
  %113 = extractvalue { i32, i32 } %112, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %155

115:                                              ; preds = %108
  tail call void @__put_page(ptr noundef %110) #4
  br label %155

116:                                              ; preds = %84
  %117 = tail call ptr @page_address(ptr noundef %60) #4
  %118 = getelementptr i8, ptr %117, i32 %41
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 1162627398
  br i1 %120, label %121, label %125, !prof !10

121:                                              ; preds = %116
  store ptr %60, ptr %9, align 8
  %122 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 14
  store i32 %41, ptr %122, align 4
  %123 = tail call ptr @page_address(ptr noundef %60) #4
  %124 = getelementptr i8, ptr %123, i32 %41
  br label %158

125:                                              ; preds = %116
  %126 = load ptr, ptr %6, align 8
  %127 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record_page, ptr noundef %126, ptr noundef nonnull @.str.5, i32 noundef %127) #4
  %128 = load i32, ptr %60, align 4
  %129 = lshr i32 %128, 30
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %136, label %131

131:                                              ; preds = %125
  %132 = icmp ne i32 %129, 3
  %133 = load i32, ptr @movable_zone, align 4
  %134 = icmp ne i32 %133, 2
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %131, %125
  tail call void @kunmap_high(ptr noundef %60) #4
  br label %137

137:                                              ; preds = %136, %131
  %138 = load volatile i32, ptr %76, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !10

141:                                              ; preds = %137
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %137
  %144 = ptrtoint ptr %60 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #4, !srcloc !8
  %149 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #4, !srcloc !17
  %150 = extractvalue { i32, i32 } %149, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  tail call void @__put_page(ptr noundef %147) #4
  br label %153

153:                                              ; preds = %152, %145
  %154 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %154) #4
  br label %155

155:                                              ; preds = %153, %115, %108, %57, %54
  %156 = phi ptr [ inttoptr (i32 -2 to ptr), %54 ], [ inttoptr (i32 -5 to ptr), %153 ], [ inttoptr (i32 -5 to ptr), %108 ], [ inttoptr (i32 -5 to ptr), %115 ], [ %60, %57 ]
  store ptr null, ptr %9, align 8
  %157 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 14
  store i32 0, ptr %157, align 4
  br label %158

158:                                              ; preds = %155, %121
  %159 = phi ptr [ %156, %155 ], [ %124, %121 ]
  %160 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  tail call void @mutex_unlock(ptr noundef %4) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !8
  %162 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #4, !srcloc !19
  %163 = load ptr, ptr %5, align 8
  %164 = load ptr, ptr %163, align 8
  %165 = ptrtoint ptr %159 to i32
  %166 = sub i32 0, %165
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_mft_record, ptr noundef %164, ptr noundef nonnull @.str, i32 noundef %166) #4
  br label %167

167:                                              ; preds = %161, %158
  ret ptr %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmap_mft_record(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !20

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #4, !srcloc !21
  unreachable

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  %8 = lshr i32 %7, 30
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %8, 3
  %12 = load i32, ptr @movable_zone, align 4
  %13 = icmp ne i32 %12, 2
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %6
  tail call void @kunmap_high(ptr noundef nonnull %3) #4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %16
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %16
  %24 = ptrtoint ptr %3 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #4, !srcloc !8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #4, !srcloc !17
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void @__put_page(ptr noundef %27) #4
  br label %33

33:                                               ; preds = %32, %25
  store ptr null, ptr %2, align 8
  %34 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 14
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %35) #4
  %36 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #4, !srcloc !8
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #4, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @map_extent_mft_record(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = trunc i64 %1 to i32
  %5 = lshr i64 %1, 48
  %6 = trunc i64 %5 to i16
  %7 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !9
  %9 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %9) #4
  %10 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 21
  %15 = load ptr, ptr %14, align 8
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ 0, %13 ], [ %17, %16 ]
  %21 = getelementptr ptr, ptr %15, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct._ntfs_inode, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %26, label %16

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct._ntfs_inode, ptr %22, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #4, !srcloc !8
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #4, !srcloc !9
  %29 = icmp eq ptr %22, null
  br i1 %29, label %53, label %30, !prof !20

30:                                               ; preds = %26
  tail call void @mutex_unlock(ptr noundef %9) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !19
  %32 = tail call ptr @map_mft_record(ptr noundef nonnull %22)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #4, !srcloc !8
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #4, !srcloc !19
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MFT_RECORD, ptr %32, i32 0, i32 4
  %37 = load i16, ptr %36, align 1
  %38 = zext i16 %37 to i32
  %39 = trunc i64 %5 to i32
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42, !prof !10

41:                                               ; preds = %35
  store ptr %22, ptr %2, align 4
  br label %117

42:                                               ; preds = %35
  tail call void @unmap_mft_record(ptr noundef nonnull %22)
  %43 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %45, ptr noundef nonnull @.str.1) #4
  br label %117

46:                                               ; preds = %69, %30
  %47 = phi ptr [ %32, %30 ], [ %67, %69 ]
  %48 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %49, align 8
  %51 = ptrtoint ptr %47 to i32
  %52 = sub i32 0, %51
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %50, ptr noundef nonnull @.str.2, i32 noundef %52) #4
  br label %117

53:                                               ; preds = %26, %16, %3
  %54 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 7
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = tail call ptr @ntfs_new_extent_inode(ptr noundef %56, i32 noundef %4) #4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61, !prof !20

59:                                               ; preds = %53
  tail call void @mutex_unlock(ptr noundef %9) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !19
  br label %117

61:                                               ; preds = %53
  %62 = load ptr, ptr %54, align 8
  %63 = getelementptr inbounds %struct._ntfs_inode, ptr %57, i32 0, i32 7
  store ptr %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct._ntfs_inode, ptr %57, i32 0, i32 5
  store i16 %6, ptr %64, align 8
  %65 = getelementptr inbounds %struct._ntfs_inode, ptr %57, i32 0, i32 20
  store i32 -1, ptr %65, align 4
  %66 = getelementptr inbounds %struct._ntfs_inode, ptr %57, i32 0, i32 21
  store ptr %0, ptr %66, align 8
  %67 = tail call ptr @map_mft_record(ptr noundef nonnull %57)
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  tail call void @mutex_unlock(ptr noundef %9) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !19
  tail call void @ntfs_clear_extent_inode(ptr noundef nonnull %57) #4
  br label %46

71:                                               ; preds = %61
  %72 = trunc i64 %5 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.MFT_RECORD, ptr %67, i32 0, i32 4
  %76 = load i16, ptr %75, align 1
  %77 = zext i16 %76 to i32
  %78 = icmp eq i32 %77, %72
  br i1 %78, label %79, label %111

79:                                               ; preds = %74, %71
  %80 = load i32, ptr %10, align 4
  %81 = and i32 %80, 3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 21
  %85 = load ptr, ptr %84, align 8
  br label %105

86:                                               ; preds = %79
  %87 = shl i32 %80, 2
  %88 = add i32 %87, 16
  %89 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3136) #5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91, !prof !20

91:                                               ; preds = %86
  %92 = load i32, ptr %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 21
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99, !prof !20

98:                                               ; preds = %94
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/mft.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

99:                                               ; preds = %94
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %89, ptr nonnull align 4 %96, i32 %87, i1 false)
  %100 = load ptr, ptr %95, align 8
  tail call void @kfree(ptr noundef %100) #4
  %101 = load i32, ptr %10, align 4
  br label %102

102:                                              ; preds = %99, %91
  %103 = phi i32 [ 0, %91 ], [ %101, %99 ]
  %104 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 21
  store ptr %89, ptr %104, align 8
  br label %105

105:                                              ; preds = %102, %83
  %106 = phi i32 [ %80, %83 ], [ %103, %102 ]
  %107 = phi ptr [ %85, %83 ], [ %89, %102 ]
  %108 = add i32 %106, 1
  store i32 %108, ptr %10, align 4
  %109 = getelementptr ptr, ptr %107, i32 %106
  store ptr %57, ptr %109, align 4
  tail call void @mutex_unlock(ptr noundef %9) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !19
  store ptr %57, ptr %2, align 4
  br label %117

111:                                              ; preds = %86, %74
  %112 = phi ptr [ @.str.1, %74 ], [ @.str.3, %86 ]
  %113 = phi ptr [ inttoptr (i32 -5 to ptr), %74 ], [ inttoptr (i32 -12 to ptr), %86 ]
  %114 = load ptr, ptr %54, align 8
  %115 = load ptr, ptr %114, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.map_extent_mft_record, ptr noundef %115, ptr noundef nonnull %112) #4
  tail call void @unmap_mft_record(ptr noundef nonnull %57)
  tail call void @mutex_unlock(ptr noundef %9) #4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #4, !srcloc !8
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #4, !srcloc !19
  tail call void @ntfs_clear_extent_inode(ptr noundef nonnull %57) #4
  br label %117

117:                                              ; preds = %111, %105, %59, %46, %42, %41
  %118 = phi ptr [ %47, %46 ], [ %32, %41 ], [ inttoptr (i32 -5 to ptr), %42 ], [ inttoptr (i32 -12 to ptr), %59 ], [ %67, %105 ], [ %113, %111 ]
  ret ptr %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_new_extent_inode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_clear_extent_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!8 = !{i64 940345, i64 2148430316, i64 2148430342, i64 2148430389, i64 2148430411, i64 2148430439, i64 2148430459}
!9 = !{i64 2148441731, i64 2148441757, i64 2148441786, i64 2148441820, i64 2148441851, i64 2148441874}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153736932, i64 2153737409, i64 2153736969, i64 2153737025, i64 2153737059, i64 2153737083, i64 2153737124, i64 2153737145, i64 2153737173, i64 2153737207}
!12 = !{i64 2151392986}
!13 = !{i64 2151392828}
!14 = !{i64 2151393130}
!15 = !{i64 2149587373}
!16 = !{i64 2148542410}
!17 = !{i64 2148444772, i64 2148444804, i64 2148444833, i64 2148444867, i64 2148444898, i64 2148444921}
!18 = !{i64 2148542613}
!19 = !{i64 2148444088, i64 2148444114, i64 2148444143, i64 2148444177, i64 2148444208, i64 2148444231}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153740444, i64 2153740922, i64 2153740481, i64 2153740537, i64 2153740571, i64 2153740595, i64 2153740636, i64 2153740657, i64 2153740685, i64 2153740719}
!22 = !{i64 2153744179, i64 2153744657, i64 2153744216, i64 2153744272, i64 2153744306, i64 2153744330, i64 2153744371, i64 2153744392, i64 2153744420, i64 2153744454}
