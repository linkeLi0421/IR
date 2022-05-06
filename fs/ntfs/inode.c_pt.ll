; ModuleID = '/llk/IR/fs/ntfs/inode.c_pt.bc'
source_filename = "../fs/ntfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.option_t = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
%struct.ntfs_attr = type { i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.71 }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.72 = type { i32, i16, i8, i8 }
%struct.STANDARD_INFORMATION = type { i64, i64, i64, i64, i32, %union.anon.74 }
%union.anon.74 = type { %struct.anon.76 }
%struct.anon.76 = type <{ i32, i32, i32, i32, i32, i64, i64 }>
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HEADER }
%struct.INDEX_HEADER = type { i32, i32, i32, i8, [3 x i8] }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.67, %struct.mutex, i32, %union.anon.70 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.67 = type { %struct.anon.69 }
%struct.anon.69 = type { i64, i32, i8, i8 }
%union.anon.70 = type { ptr }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ATTR_LIST_ENTRY = type <{ i32, i16, i8, i8, i64, i64, i16, [0 x i16] }>
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }

@ntfs_big_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_alloc_big_inode = private unnamed_addr constant [21 x i8] c"ntfs_alloc_big_inode\00", align 1
@.str = private unnamed_addr constant [47 x i8] c"Allocation of NTFS big inode structure failed.\00", align 1
@__ntfs_init_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&ni->mrec_lock\00", align 1
@__ntfs_init_inode.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&ni->extent_lock\00", align 1
@__func__.ntfs_read_inode_mount = private unnamed_addr constant [22 x i8] c"ntfs_read_inode_mount\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Unsupported mft record size %i (max 64kiB).\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to allocate buffer for $MFT record 0.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Device read failed.\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Incorrect mft record size %u in superblock, should be %u.\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"MST fixup failed. $MFT is corrupt.\00", align 1
@ntfs_mst_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"Failed to lookup attribute list attribute. You should run chkdsk.\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"  Not allowed.  $MFT is corrupt.  You should run chkdsk.\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Attribute list attribute is compressed.%s\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Non-resident attribute list attribute is encrypted/sparse.%s\00", align 1
@.str.13 = private unnamed_addr constant [242 x i8] c"Resident attribute list attribute in $MFT system file is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"Not enough memory to allocate buffer for attribute list.\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"Attribute list has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Mapping pairs decompression failed with error code %i.\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Failed to load attribute list attribute with error code %i.\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Corrupt attribute list attribute.\00", align 1
@.str.19 = private unnamed_addr constant [142 x i8] c"BUG: The first $DATA extent of $MFT is not in the base mft record. Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.20 = private unnamed_addr constant [88 x i8] c"$MFT must be non-resident but a resident extent was found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.21 = private unnamed_addr constant [136 x i8] c"$MFT must be uncompressed, non-sparse, and unencrypted but a compressed/sparse/encrypted extent was found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"ntfs_mapping_pairs_decompress() failed with error code %ld.  $MFT is corrupt.\00", align 1
@.str.23 = private unnamed_addr constant [97 x i8] c"First extent of $DATA attribute has non zero lowest_vcn. $MFT is corrupt. You should run chkdsk.\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"$MFT is too big! Aborting.\00", align 1
@.str.25 = private unnamed_addr constant [169 x i8] c"ntfs_read_inode() of $MFT failed. BUG or corrupt $MFT. Run chkdsk and if no errors are found, please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@ntfs_empty_inode_ops = external dso_local constant %struct.inode_operations, align 64
@ntfs_empty_file_ops = external dso_local constant %struct.file_operations, align 4
@.str.26 = private unnamed_addr constant [55 x i8] c"$MFT has corrupt attribute list attribute. Run chkdsk.\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"Failed to lookup $MFT/$DATA attribute extent. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"$MFT/$DATA attribute not found. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"Failed to load the complete runlist for $MFT/$DATA. Driver bug or corrupt $MFT. Run chkdsk.\00", align 1
@.str.30 = private unnamed_addr constant [94 x i8] c"Couldn't find first extent of $DATA attribute in attribute list. $MFT is corrupt. Run chkdsk.\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Failed. Marking inode as bad.\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c",uid=%i\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c",gid=%i\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c",umask=0%o\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c",fmask=0%o\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c",dmask=0%o\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c",nls=%s\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c",case_sensitive\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c",show_sys_files\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c",disable_sparse\00", align 1
@on_errors_arr = external dso_local local_unnamed_addr constant [0 x %struct.option_t], align 4
@.str.41 = private unnamed_addr constant [11 x i8] c",errors=%s\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c",mft_zone_multiplier=%i\00", align 1
@I30 = external dso_local global [5 x i16], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ntfs_init_runlist.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"&rl->lock\00", align 1
@ntfs_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_alloc_extent_inode = private unnamed_addr constant [24 x i8] c"ntfs_alloc_extent_inode\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Allocation of NTFS inode structure failed.\00", align 1
@__func__.ntfs_read_locked_inode = private unnamed_addr constant [23 x i8] c"ntfs_read_locked_inode\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Inode is not in use!\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Inode is an extent inode!\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"$STANDARD_INFORMATION attribute is missing.\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"Corrupt standard information attribute in inode.\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Failed to lookup attribute list attribute.\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Attribute list attribute is compressed.\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"Non-resident attribute list attribute is encrypted/sparse.\00", align 1
@.str.52 = private unnamed_addr constant [237 x i8] c"Resident attribute list attribute in inode 0x%lx is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"Attribute list has non zero lowest_vcn.\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Mapping pairs decompression failed.\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"Failed to load attribute list attribute.\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Corrupt attribute list in inode.\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is missing.\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", align 1
@.str.59 = private unnamed_addr constant [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"Found encrypted and compressed attribute.\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Directory index is corrupt.\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"Indexed attribute is not $FILE_NAME.\00", align 1
@.str.64 = private unnamed_addr constant [49 x i8] c"Index collation rule is not COLLATION_FILE_NAME.\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"Index block size (%u) is not a power of two.\00", align 1
@.str.66 = private unnamed_addr constant [66 x i8] c"Index block size (%u) > PAGE_SIZE (%ld) is not supported.  Sorry.\00", align 1
@.str.67 = private unnamed_addr constant [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", align 1
@.str.68 = private unnamed_addr constant [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", align 1
@.str.71 = private unnamed_addr constant [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", align 1
@.str.75 = private unnamed_addr constant [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.77 = private unnamed_addr constant [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", align 1
@.str.78 = private unnamed_addr constant [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", align 1
@ntfs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 64
@ntfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@.str.79 = private unnamed_addr constant [34 x i8] c"Failed to lookup $DATA attribute.\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"$DATA attribute is missing.\00", align 1
@.str.81 = private unnamed_addr constant [83 x i8] c"Found compressed data but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"Found unknown compression method or corrupt file.\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"Found encrypted and compressed data.\00", align 1
@.str.84 = private unnamed_addr constant [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", align 1
@.str.85 = private unnamed_addr constant [57 x i8] c"First extent of $DATA attribute has non zero lowest_vcn.\00", align 1
@.str.86 = private unnamed_addr constant [62 x i8] c"Resident data attribute is corrupt (size exceeds allocation).\00", align 1
@ntfs_file_inode_ops = external dso_local constant %struct.inode_operations, align 64
@ntfs_file_ops = external dso_local constant %struct.file_operations, align 4
@ntfs_normal_aops = external dso_local constant %struct.address_space_operations, align 4
@ntfs_compressed_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.87 = private unnamed_addr constant [77 x i8] c"Failed with error code %i.  Marking corrupt inode 0x%lx as bad.  Run chkdsk.\00", align 1
@__func__.ntfs_is_extended_system_file = private unnamed_addr constant [29 x i8] c"ntfs_is_extended_system_file\00", align 1
@.str.88 = private unnamed_addr constant [52 x i8] c"Corrupt file name attribute. You should run chkdsk.\00", align 1
@.str.89 = private unnamed_addr constant [47 x i8] c"Non-resident file name. You should run chkdsk.\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"File name with invalid flags. You should run chkdsk.\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"Unindexed file name. You should run chkdsk.\00", align 1
@.str.92 = private unnamed_addr constant [86 x i8] c"Inode hard link count doesn't match number of name attributes. You should run chkdsk.\00", align 1
@__func__.ntfs_read_locked_attr_inode = private unnamed_addr constant [28 x i8] c"ntfs_read_locked_attr_inode\00", align 1
@.str.93 = private unnamed_addr constant [127 x i8] c"Found compressed non-data or named data attribute.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.94 = private unnamed_addr constant [88 x i8] c"Found compressed attribute but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"Found unknown compression method.\00", align 1
@.str.96 = private unnamed_addr constant [131 x i8] c"Found mst protected attribute but the attribute is %s.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@.str.99 = private unnamed_addr constant [138 x i8] c"Found mst protected attribute but the attribute is encrypted.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"Found encrypted non-data attribute.\00", align 1
@.str.101 = private unnamed_addr constant [52 x i8] c"Attribute name is placed after the attribute value.\00", align 1
@.str.102 = private unnamed_addr constant [137 x i8] c"Found mst protected attribute but the attribute is resident.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"Resident attribute is corrupt (size exceeds allocation).\00", align 1
@.str.104 = private unnamed_addr constant [56 x i8] c"Attribute name is placed after the mapping pairs array.\00", align 1
@.str.105 = private unnamed_addr constant [51 x i8] c"First extent of attribute has non-zero lowest_vcn.\00", align 1
@.str.106 = private unnamed_addr constant [161 x i8] c"Failed with error code %i while reading attribute inode (mft_no 0x%lx, type 0x%x, name_len %i).  Marking corrupt inode and base inode 0x%lx as bad.  Run chkdsk.\00", align 1
@__func__.ntfs_read_locked_index_inode = private unnamed_addr constant [29 x i8] c"ntfs_read_locked_index_inode\00", align 1
@.str.107 = private unnamed_addr constant [56 x i8] c"Found compressed/encrypted/sparse index root attribute.\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"Index is corrupt.\00", align 1
@.str.109 = private unnamed_addr constant [36 x i8] c"Index type is not 0 (type is 0x%x).\00", align 1
@.str.110 = private unnamed_addr constant [80 x i8] c"Failed with error code %i while reading index inode (mft_no 0x%lx, name_len %i.\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ntfs_test_inode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -176
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !8

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %39, !prof !8

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %0, i32 -156
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 -148
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %0, i32 -152
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = shl i32 %24, 1
  %36 = tail call i32 @bcmp(ptr %32, ptr %34, i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %28, %12
  br label %39

39:                                               ; preds = %38, %30, %22, %16, %12, %2
  %40 = phi i32 [ 1, %38 ], [ 0, %2 ], [ 0, %12 ], [ 0, %16 ], [ 0, %22 ], [ 0, %30 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_iget(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ntfs_attr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ntfs_attr, ptr %3, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ntfs_attr, ptr %3, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ntfs_attr, ptr %3, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = call ptr @iget5_locked(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %3) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = call fastcc i32 @ntfs_read_locked_inode(ptr noundef nonnull %7)
  call void @unlock_new_inode(ptr noundef nonnull %7) #11
  %16 = icmp eq i32 %15, -12
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %14
  call void @iput(ptr noundef nonnull %7) #11
  br label %18

18:                                               ; preds = %17, %14, %9, %2
  %19 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %7, %14 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_init_locked_inode(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -156
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 160
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 4, ptr noundef %11) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 -152
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ntfs_attr, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 -148
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29, !prof !8

21:                                               ; preds = %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

25:                                               ; preds = %21
  %26 = load i32, ptr %16, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %49, label %28, !prof !8

28:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #11, !srcloc !11
  unreachable

29:                                               ; preds = %12
  %30 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 3, ptr noundef %30) #11
  %31 = load i32, ptr %16, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %13, align 4
  %35 = icmp eq ptr %34, @I30
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = icmp eq ptr %34, null
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

39:                                               ; preds = %36
  %40 = shl i32 %31, 1
  %41 = add i32 %40, 2
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 2592) #12
  store ptr %42, ptr %15, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %13, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %42, ptr align 2 %45, i32 %40, i1 false)
  %46 = load ptr, ptr %15, align 8
  %47 = load i32, ptr %16, align 4
  %48 = getelementptr i16, ptr %46, i32 %47
  store i16 0, ptr %48, align 2
  br label %49

49:                                               ; preds = %44, %39, %33, %29, %25
  %50 = phi i32 [ 0, %25 ], [ 0, %44 ], [ 0, %33 ], [ 0, %29 ], [ -12, %39 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_read_locked_inode(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %9, align 8
  store i16 0, ptr %0, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -200
  store i32 0, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 -192
  %18 = getelementptr i8, ptr %0, i32 -168
  store i16 0, ptr %18, align 8
  %19 = getelementptr i8, ptr %0, i32 -164
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #11
  store volatile i32 1, ptr %19, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %0, i32 -160
  store ptr %20, ptr %21, align 8
  %22 = getelementptr i8, ptr %0, i32 -144
  store ptr null, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 -140
  tail call void @__init_rwsem(ptr noundef %23, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %24 = getelementptr i8, ptr %0, i32 -116
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %25 = getelementptr i8, ptr %0, i32 -96
  %26 = getelementptr i8, ptr %0, i32 -76
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %25, i8 0, i64 20, i1 false) #11
  tail call void @__init_rwsem(ptr noundef %26, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %27 = getelementptr i8, ptr %0, i32 -48
  %28 = getelementptr i8, ptr %0, i32 -32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %27, i8 0, i64 14, i1 false) #11
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %29 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 -8
  store ptr null, ptr %30, align 8
  %31 = load i32, ptr %12, align 4
  %32 = getelementptr i8, ptr %0, i32 -172
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %15, %1
  %34 = getelementptr i8, ptr %0, i32 -200
  %35 = tail call ptr @map_mft_record(ptr noundef %34) #11
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = ptrtoint ptr %35 to i32
  br label %687

39:                                               ; preds = %33
  %40 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %34, ptr noundef %35) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %682, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.MFT_RECORD, ptr %35, i32 0, i32 7
  %44 = load i16, ptr %43, align 1
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %48, ptr noundef nonnull @.str.45) #11
  br label %670

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.MFT_RECORD, ptr %35, i32 0, i32 10
  %51 = load i64, ptr %50, align 1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %54, ptr noundef nonnull @.str.46) #11
  br label %670

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.MFT_RECORD, ptr %35, i32 0, i32 4
  %57 = load i16, ptr %56, align 1
  %58 = getelementptr i8, ptr %0, i32 -168
  store i16 %57, ptr %58, align 8
  %59 = zext i16 %57 to i32
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.MFT_RECORD, ptr %35, i32 0, i32 5
  %62 = load i16, ptr %61, align 1
  %63 = zext i16 %62 to i32
  tail call void @set_nlink(ptr noundef %0, i32 noundef %63) #11
  %64 = load i16, ptr %0, align 8
  %65 = or i16 %64, 511
  store i16 %65, ptr %0, align 8
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %55
  %72 = and i16 %65, -147
  store i16 %72, ptr %0, align 8
  br label %73

73:                                               ; preds = %71, %55
  %74 = phi i16 [ %72, %71 ], [ %65, %55 ]
  %75 = load i16, ptr %43, align 1
  %76 = and i16 %75, 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = or i16 %74, 16384
  store i16 %79, ptr %0, align 8
  %80 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 6
  %81 = load i16, ptr %80, align 2
  %82 = xor i16 %81, -1
  %83 = and i16 %79, %82
  store i16 %83, ptr %0, align 8
  %84 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %85 = load i32, ptr %84, align 8
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  tail call void @set_nlink(ptr noundef %0, i32 noundef 1) #11
  br label %94

88:                                               ; preds = %73
  %89 = or i16 %74, -32768
  store i16 %89, ptr %0, align 8
  %90 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 5
  %91 = load i16, ptr %90, align 4
  %92 = xor i16 %91, -1
  %93 = and i16 %89, %92
  store i16 %93, ptr %0, align 8
  br label %94

94:                                               ; preds = %88, %87, %78
  %95 = tail call i32 @ntfs_attr_lookup(i32 noundef 16, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %40) #11
  switch i32 %95, label %665 [
    i32 0, label %98
    i32 -2, label %96
  ], !prof !13

96:                                               ; preds = %94
  %97 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %97, ptr noundef nonnull @.str.47) #11
  br label %678

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %40, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ATTR_RECORD, ptr %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.anon.72, ptr %101, i32 0, i32 1
  %103 = load i16, ptr %102, align 1
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %100, i32 %104
  %106 = load i32, ptr %101, align 1
  %107 = getelementptr i8, ptr %105, i32 %106
  %108 = load ptr, ptr %40, align 4
  %109 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = icmp ugt ptr %107, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %114, ptr noundef nonnull @.str.48) #11
  br label %670

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %117 = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %105, i32 0, i32 1
  %118 = load i64, ptr %117, align 1
  %119 = add i64 %118, -116444736000000000
  %120 = trunc i64 %119 to i32
  %121 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %119) #13, !srcloc !14
  %122 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %119, i64 %121, i32 0) #13, !srcloc !15
  %123 = extractvalue { i64, i32 } %122, 0
  %124 = lshr i64 %123, 23
  %125 = trunc i64 %124 to i32
  %126 = mul i32 %125, -10000000
  %127 = add i32 %126, %120
  %128 = mul i32 %127, 100
  %129 = zext i32 %128 to i64
  store i64 %124, ptr %116, align 8
  %130 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, i32 1
  store i64 %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %132 = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %105, i32 0, i32 2
  %133 = load i64, ptr %132, align 1
  %134 = add i64 %133, -116444736000000000
  %135 = trunc i64 %134 to i32
  %136 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %134) #13, !srcloc !14
  %137 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %134, i64 %136, i32 0) #13, !srcloc !15
  %138 = extractvalue { i64, i32 } %137, 0
  %139 = lshr i64 %138, 23
  %140 = trunc i64 %139 to i32
  %141 = mul i32 %140, -10000000
  %142 = add i32 %141, %135
  %143 = mul i32 %142, 100
  %144 = zext i32 %143 to i64
  store i64 %139, ptr %131, align 8
  %145 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16, i32 1
  store i64 %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %147 = getelementptr inbounds %struct.STANDARD_INFORMATION, ptr %105, i32 0, i32 3
  %148 = load i64, ptr %147, align 1
  %149 = add i64 %148, -116444736000000000
  %150 = trunc i64 %149 to i32
  %151 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %149) #13, !srcloc !14
  %152 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %149, i64 %151, i32 0) #13, !srcloc !15
  %153 = extractvalue { i64, i32 } %152, 0
  %154 = lshr i64 %153, 23
  %155 = trunc i64 %154 to i32
  %156 = mul i32 %155, -10000000
  %157 = add i32 %156, %150
  %158 = mul i32 %157, 100
  %159 = zext i32 %158 to i64
  store i64 %154, ptr %146, align 8
  %160 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, i32 1
  store i64 %159, ptr %160, align 8
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %40) #11
  %161 = tail call i32 @ntfs_attr_lookup(i32 noundef 32, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %40) #11
  switch i32 %161, label %162 [
    i32 0, label %164
    i32 -2, label %248
  ], !prof !16

162:                                              ; preds = %115
  %163 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %163, ptr noundef nonnull @.str.49) #11
  br label %665

164:                                              ; preds = %115
  %165 = load i32, ptr %12, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %248, label %167

167:                                              ; preds = %164
  %168 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 1, ptr noundef %168) #11
  %169 = load ptr, ptr %99, align 4
  %170 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 5
  %171 = load i16, ptr %170, align 1
  %172 = zext i16 %171 to i32
  %173 = and i32 %172, 255
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %167
  %176 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %176, ptr noundef nonnull @.str.50) #11
  br label %670

177:                                              ; preds = %167
  %178 = and i32 %172, 49152
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 2
  %182 = load i8, ptr %181, align 1
  %183 = icmp eq i8 %182, 0
  %184 = load ptr, ptr %2, align 4
  br i1 %183, label %186, label %185

185:                                              ; preds = %180
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %184, ptr noundef nonnull @.str.51) #11
  br label %670

186:                                              ; preds = %180
  %187 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %184, ptr noundef nonnull @.str.52, i32 noundef %187) #11
  br label %188

188:                                              ; preds = %186, %177
  %189 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 2
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 7
  %194 = load i32, ptr %193, align 1
  br label %199

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 7, i32 0, i32 6
  %197 = load i64, ptr %196, align 1
  %198 = trunc i64 %197 to i32
  br label %199

199:                                              ; preds = %195, %192
  %200 = phi i32 [ %198, %195 ], [ %194, %192 ]
  %201 = getelementptr i8, ptr %0, i32 -88
  store i32 %200, ptr %201, align 8
  %202 = tail call fastcc ptr @ntfs_malloc_nofs(i32 noundef %200)
  %203 = getelementptr i8, ptr %0, i32 -84
  store ptr %202, ptr %203, align 4
  %204 = icmp eq ptr %202, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %206, ptr noundef nonnull @.str.14) #11
  br label %678

207:                                              ; preds = %199
  %208 = load i8, ptr %189, align 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %233, label %210

210:                                              ; preds = %207
  tail call void @_set_bit(i32 noundef 2, ptr noundef %168) #11
  %211 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 7
  %212 = load i64, ptr %211, align 1
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %215, ptr noundef nonnull @.str.53) #11
  br label %670

216:                                              ; preds = %210
  %217 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %5, ptr noundef %169, ptr noundef null) #11
  %218 = getelementptr i8, ptr %0, i32 -80
  store ptr %217, ptr %218, align 8
  %219 = icmp ugt ptr %217, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = ptrtoint ptr %217 to i32
  store ptr null, ptr %218, align 8
  %222 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %222, ptr noundef nonnull @.str.54) #11
  br label %665

223:                                              ; preds = %216
  %224 = load ptr, ptr %203, align 4
  %225 = load i32, ptr %201, align 8
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 7, i32 0, i32 7
  %228 = load i64, ptr %227, align 1
  %229 = tail call i32 @load_attribute_list(ptr noundef %5, ptr noundef %218, ptr noundef %224, i64 noundef %226, i64 noundef %228) #11
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %248, label %231

231:                                              ; preds = %223
  %232 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %232, ptr noundef nonnull @.str.55) #11
  br label %678

233:                                              ; preds = %207
  %234 = getelementptr inbounds %struct.ATTR_RECORD, ptr %169, i32 0, i32 7
  %235 = getelementptr inbounds %struct.anon.72, ptr %234, i32 0, i32 1
  %236 = load i16, ptr %235, align 1
  %237 = zext i16 %236 to i32
  %238 = getelementptr i8, ptr %169, i32 %237
  %239 = load i32, ptr %234, align 1
  %240 = getelementptr i8, ptr %238, i32 %239
  %241 = load ptr, ptr %40, align 4
  %242 = load i32, ptr %109, align 4
  %243 = getelementptr i8, ptr %241, i32 %242
  %244 = icmp ugt ptr %240, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %233
  %246 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %246, ptr noundef nonnull @.str.56) #11
  br label %670

247:                                              ; preds = %233
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %202, ptr align 1 %238, i32 %239, i1 false)
  br label %248

248:                                              ; preds = %247, %223, %164, %115
  %249 = load i16, ptr %0, align 8
  %250 = and i16 %249, -4096
  %251 = icmp eq i16 %250, 16384
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %40) #11
  br i1 %251, label %252, label %477

252:                                              ; preds = %248
  %253 = tail call i32 @ntfs_attr_lookup(i32 noundef 144, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %40) #11
  switch i32 %253, label %665 [
    i32 0, label %256
    i32 -2, label %254
  ], !prof !13

254:                                              ; preds = %252
  %255 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %255, ptr noundef nonnull @.str.57) #11
  br label %678

256:                                              ; preds = %252
  %257 = load ptr, ptr %99, align 4
  %258 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 2
  %259 = load i8, ptr %258, align 1
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %263, label %261, !prof !8

261:                                              ; preds = %256
  %262 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %262, ptr noundef nonnull @.str.58) #11
  br label %670

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 3
  %265 = load i8, ptr %264, align 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 4
  %269 = load i16, ptr %268, align 1
  %270 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 7
  %271 = getelementptr inbounds %struct.anon.72, ptr %270, i32 0, i32 1
  %272 = load i16, ptr %271, align 1
  %273 = icmp ult i16 %269, %272
  br i1 %273, label %276, label %274, !prof !8

274:                                              ; preds = %267
  %275 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %275, ptr noundef nonnull @.str.59) #11
  br label %670

276:                                              ; preds = %267, %263
  %277 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 5
  %278 = load i16, ptr %277, align 1
  %279 = and i16 %278, 255
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 6, ptr noundef %282) #11
  %283 = load i16, ptr %277, align 1
  br label %284

284:                                              ; preds = %281, %276
  %285 = phi i16 [ %283, %281 ], [ %278, %276 ]
  %286 = zext i16 %285 to i32
  %287 = and i32 %286, 16384
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %297, label %289

289:                                              ; preds = %284
  %290 = and i32 %286, 255
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %293, ptr noundef nonnull @.str.60) #11
  br label %670

294:                                              ; preds = %289
  %295 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 7, ptr noundef %295) #11
  %296 = load i16, ptr %277, align 1
  br label %297

297:                                              ; preds = %294, %284
  %298 = phi i16 [ %296, %294 ], [ %285, %284 ]
  %299 = icmp sgt i16 %298, -1
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 8, ptr noundef %301) #11
  br label %302

302:                                              ; preds = %300, %297
  %303 = getelementptr inbounds %struct.ATTR_RECORD, ptr %257, i32 0, i32 7
  %304 = getelementptr inbounds %struct.anon.72, ptr %303, i32 0, i32 1
  %305 = load i16, ptr %304, align 1
  %306 = zext i16 %305 to i32
  %307 = getelementptr i8, ptr %257, i32 %306
  %308 = load i32, ptr %303, align 1
  %309 = getelementptr i8, ptr %307, i32 %308
  %310 = load ptr, ptr %40, align 4
  %311 = load i32, ptr %109, align 4
  %312 = getelementptr i8, ptr %310, i32 %311
  %313 = icmp ugt ptr %309, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %302
  %315 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %315, ptr noundef nonnull @.str.61) #11
  br label %670

316:                                              ; preds = %302
  %317 = getelementptr inbounds %struct.INDEX_ROOT, ptr %307, i32 0, i32 5
  %318 = getelementptr inbounds %struct.INDEX_HEADER, ptr %317, i32 0, i32 1
  %319 = load i32, ptr %318, align 1
  %320 = getelementptr i8, ptr %317, i32 %319
  %321 = icmp ugt ptr %320, %309
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %323, ptr noundef nonnull @.str.62) #11
  br label %670

324:                                              ; preds = %316
  %325 = load i32, ptr %307, align 1
  %326 = icmp eq i32 %325, 48
  br i1 %326, label %329, label %327

327:                                              ; preds = %324
  %328 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %328, ptr noundef nonnull @.str.63) #11
  br label %670

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.INDEX_ROOT, ptr %307, i32 0, i32 1
  %331 = load i32, ptr %330, align 1
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %334, ptr noundef nonnull @.str.64) #11
  br label %670

335:                                              ; preds = %329
  %336 = getelementptr i8, ptr %0, i32 -48
  %337 = getelementptr i8, ptr %0, i32 -40
  store i32 1, ptr %337, align 8
  %338 = getelementptr inbounds %struct.INDEX_ROOT, ptr %307, i32 0, i32 2
  %339 = load i32, ptr %338, align 1
  store i32 %339, ptr %336, align 8
  %340 = tail call i32 @llvm.ctpop.i32(i32 %339), !range !17
  %341 = icmp ult i32 %340, 2
  br i1 %341, label %344, label %342

342:                                              ; preds = %335
  %343 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %343, ptr noundef nonnull @.str.65, i32 noundef %339) #11
  br label %670

344:                                              ; preds = %335
  %345 = icmp ugt i32 %339, 4096
  br i1 %345, label %346, label %348

346:                                              ; preds = %344
  %347 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %347, ptr noundef nonnull @.str.66, i32 noundef %339, i32 noundef 4096) #11
  br label %678

348:                                              ; preds = %344
  %349 = icmp ult i32 %339, 512
  br i1 %349, label %350, label %352

350:                                              ; preds = %348
  %351 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %351, ptr noundef nonnull @.str.67, i32 noundef %339, i32 noundef 512) #11
  br label %678

352:                                              ; preds = %348
  %353 = tail call i32 @llvm.cttz.i32(i32 %339, i1 true), !range !17
  %354 = trunc i32 %353 to i8
  %355 = getelementptr i8, ptr %0, i32 -36
  store i8 %354, ptr %355, align 4
  %356 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 11
  %357 = load i32, ptr %356, align 8
  %358 = icmp ugt i32 %357, %339
  br i1 %358, label %362, label %359

359:                                              ; preds = %352
  %360 = getelementptr i8, ptr %0, i32 -44
  store i32 %357, ptr %360, align 4
  %361 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  br label %368

362:                                              ; preds = %352
  %363 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 9
  %364 = load i16, ptr %363, align 2
  %365 = zext i16 %364 to i32
  %366 = getelementptr i8, ptr %0, i32 -44
  store i32 %365, ptr %366, align 4
  %367 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 10
  br label %368

368:                                              ; preds = %362, %359
  %369 = phi ptr [ %367, %362 ], [ %361, %359 ]
  %370 = load i8, ptr %369, align 4
  %371 = getelementptr i8, ptr %0, i32 -35
  store i8 %370, ptr %371, align 1
  %372 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 4, ptr noundef %372) #11
  %373 = getelementptr i8, ptr %0, i32 -156
  store i32 160, ptr %373, align 4
  %374 = getelementptr i8, ptr %0, i32 -152
  store ptr @I30, ptr %374, align 8
  %375 = getelementptr i8, ptr %0, i32 -148
  store i32 4, ptr %375, align 4
  %376 = getelementptr inbounds %struct.INDEX_HEADER, ptr %317, i32 0, i32 3
  %377 = load i8, ptr %376, align 1
  %378 = and i8 %377, 1
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %368
  %381 = getelementptr i8, ptr %0, i32 -192
  %382 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %382, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %381, i8 0, i64 16, i1 false)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %40) #11
  tail call void @unmap_mft_record(ptr noundef %34) #11
  br label %473

383:                                              ; preds = %368
  tail call void @_set_bit(i32 noundef 5, ptr noundef %372) #11
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %40) #11
  %384 = tail call i32 @ntfs_attr_lookup(i32 noundef 160, ptr noundef nonnull @I30, i32 noundef 4, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %40) #11
  switch i32 %384, label %387 [
    i32 0, label %389
    i32 -2, label %385
  ], !prof !13

385:                                              ; preds = %383
  %386 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %386, ptr noundef nonnull @.str.68) #11
  br label %678

387:                                              ; preds = %383
  %388 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %388, ptr noundef nonnull @.str.69) #11
  br label %665

389:                                              ; preds = %383
  %390 = load ptr, ptr %99, align 4
  %391 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 2
  %392 = load i8, ptr %391, align 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %395, ptr noundef nonnull @.str.70) #11
  br label %670

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 3
  %398 = load i8, ptr %397, align 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %408, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 4
  %402 = load i16, ptr %401, align 1
  %403 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 7, i32 0, i32 2
  %404 = load i16, ptr %403, align 1
  %405 = icmp ult i16 %402, %404
  br i1 %405, label %408, label %406, !prof !8

406:                                              ; preds = %400
  %407 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %407, ptr noundef nonnull @.str.71) #11
  br label %670

408:                                              ; preds = %400, %396
  %409 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 5
  %410 = load i16, ptr %409, align 1
  %411 = zext i16 %410 to i32
  %412 = and i32 %411, 16384
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %408
  %415 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %415, ptr noundef nonnull @.str.72) #11
  br label %670

416:                                              ; preds = %408
  %417 = and i32 %411, 32768
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %420, ptr noundef nonnull @.str.73) #11
  br label %670

421:                                              ; preds = %416
  %422 = and i32 %411, 255
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %421
  %425 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %425, ptr noundef nonnull @.str.74) #11
  br label %670

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 7
  %428 = load i64, ptr %427, align 1
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %426
  %431 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %431, ptr noundef nonnull @.str.75) #11
  br label %670

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 7, i32 0, i32 6
  %434 = load i64, ptr %433, align 1
  %435 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %434, ptr %435, align 8
  %436 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 7, i32 0, i32 7
  %437 = load i64, ptr %436, align 1
  %438 = getelementptr i8, ptr %0, i32 -192
  store i64 %437, ptr %438, align 8
  %439 = getelementptr inbounds %struct.ATTR_RECORD, ptr %390, i32 0, i32 7, i32 0, i32 5
  %440 = load i64, ptr %439, align 1
  %441 = getelementptr i8, ptr %0, i32 -184
  store i64 %440, ptr %441, align 8
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %40) #11
  tail call void @unmap_mft_record(ptr noundef %34) #11
  %442 = tail call ptr @ntfs_attr_iget(ptr noundef %0, i32 noundef 176, ptr noundef nonnull @I30, i32 noundef 4)
  %443 = icmp ugt ptr %442, inttoptr (i32 -4096 to ptr)
  br i1 %443, label %444, label %447

444:                                              ; preds = %432
  %445 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %445, ptr noundef nonnull @.str.76) #11
  %446 = ptrtoint ptr %442 to i32
  br label %665

447:                                              ; preds = %432
  %448 = getelementptr i8, ptr %442, i32 -176
  %449 = load volatile i32, ptr %448, align 4
  %450 = and i32 %449, 64
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %447
  %453 = load volatile i32, ptr %448, align 4
  %454 = and i32 %453, 128
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %452
  %457 = load volatile i32, ptr %448, align 4
  %458 = and i32 %457, 256
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %462, label %460

460:                                              ; preds = %456, %452, %447
  %461 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %461, ptr noundef nonnull @.str.77) #11
  br label %664

462:                                              ; preds = %456
  %463 = tail call fastcc i64 @i_size_read(ptr noundef %442)
  %464 = shl i64 %463, 3
  %465 = load i64, ptr %435, align 8
  %466 = load i8, ptr %355, align 4
  %467 = zext i8 %466 to i64
  %468 = ashr i64 %465, %467
  %469 = icmp slt i64 %464, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %462
  %471 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %471, ptr noundef nonnull @.str.78, i64 noundef %464, i64 noundef %465) #11
  br label %664

472:                                              ; preds = %462
  tail call void @iput(ptr noundef %442) #11
  br label %473

473:                                              ; preds = %472, %380
  %474 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @ntfs_dir_inode_ops, ptr %474, align 8
  %475 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @ntfs_dir_ops, ptr %475, align 8
  %476 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  br label %636

477:                                              ; preds = %248
  %478 = getelementptr i8, ptr %0, i32 -156
  store i32 128, ptr %478, align 4
  %479 = getelementptr i8, ptr %0, i32 -152
  store ptr null, ptr %479, align 8
  %480 = getelementptr i8, ptr %0, i32 -148
  store i32 0, ptr %480, align 4
  %481 = tail call i32 @ntfs_attr_lookup(i32 noundef 128, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %40) #11
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %497, label %483, !prof !8

483:                                              ; preds = %477
  %484 = getelementptr i8, ptr %0, i32 -192
  %485 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %485, align 8
  %486 = icmp eq i32 %481, -2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %484, i8 0, i64 16, i1 false)
  br i1 %486, label %489, label %487

487:                                              ; preds = %483
  %488 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %488, ptr noundef nonnull @.str.79) #11
  br label %678

489:                                              ; preds = %483
  %490 = load i32, ptr %12, align 4
  %491 = icmp eq i32 %490, 9
  br i1 %491, label %622, label %492

492:                                              ; preds = %489
  %493 = tail call fastcc i32 @ntfs_is_extended_system_file(ptr noundef nonnull %40)
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %622, label %495

495:                                              ; preds = %492
  %496 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %496, ptr noundef nonnull @.str.80) #11
  br label %678

497:                                              ; preds = %477
  %498 = load ptr, ptr %99, align 4
  %499 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 5
  %500 = load i16, ptr %499, align 1
  %501 = zext i16 %500 to i32
  %502 = and i32 %501, 33023
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %526, label %504

504:                                              ; preds = %497
  %505 = and i32 %501, 255
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %520, label %507

507:                                              ; preds = %504
  %508 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 6, ptr noundef %508) #11
  %509 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 11
  %510 = load i32, ptr %509, align 8
  %511 = icmp ugt i32 %510, 4096
  br i1 %511, label %512, label %514

512:                                              ; preds = %507
  %513 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %513, ptr noundef nonnull @.str.81, i32 noundef %510) #11
  br label %670

514:                                              ; preds = %507
  %515 = load i16, ptr %499, align 1
  %516 = and i16 %515, 255
  %517 = icmp eq i16 %516, 1
  br i1 %517, label %520, label %518

518:                                              ; preds = %514
  %519 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %519, ptr noundef nonnull @.str.82) #11
  br label %670

520:                                              ; preds = %514, %504
  %521 = phi i16 [ %515, %514 ], [ %500, %504 ]
  %522 = icmp sgt i16 %521, -1
  br i1 %522, label %526, label %523

523:                                              ; preds = %520
  %524 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 8, ptr noundef %524) #11
  %525 = load i16, ptr %499, align 1
  br label %526

526:                                              ; preds = %523, %520, %497
  %527 = phi i16 [ %521, %520 ], [ %525, %523 ], [ %500, %497 ]
  %528 = and i16 %527, 16384
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %538, label %530

530:                                              ; preds = %526
  %531 = getelementptr i8, ptr %0, i32 -176
  %532 = load volatile i32, ptr %531, align 4
  %533 = and i32 %532, 64
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %537, label %535

535:                                              ; preds = %530
  %536 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %536, ptr noundef nonnull @.str.83) #11
  br label %670

537:                                              ; preds = %530
  tail call void @_set_bit(i32 noundef 7, ptr noundef %531) #11
  br label %538

538:                                              ; preds = %537, %526
  %539 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 2
  %540 = load i8, ptr %539, align 1
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %605, label %542

542:                                              ; preds = %538
  %543 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 5, ptr noundef %543) #11
  %544 = load volatile i32, ptr %543, align 4
  %545 = and i32 %544, 64
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %551

547:                                              ; preds = %542
  %548 = load volatile i32, ptr %543, align 4
  %549 = and i32 %548, 256
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %589, label %551

551:                                              ; preds = %547, %542
  %552 = load volatile i32, ptr %543, align 4
  %553 = and i32 %552, 64
  %554 = icmp eq i32 %553, 0
  %555 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 3
  %556 = load i8, ptr %555, align 1
  br i1 %554, label %562, label %557

557:                                              ; preds = %551
  %558 = icmp eq i8 %556, 4
  br i1 %558, label %564, label %559

559:                                              ; preds = %557
  %560 = zext i8 %556 to i32
  %561 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %561, ptr noundef nonnull @.str.84, i32 noundef %560) #11
  br label %678

562:                                              ; preds = %551
  %563 = icmp eq i8 %556, 0
  br i1 %563, label %580, label %564

564:                                              ; preds = %562, %557
  %565 = phi i8 [ %556, %562 ], [ 4, %557 ]
  %566 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 3
  %567 = zext i8 %565 to i32
  %568 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %569 = load i8, ptr %568, align 8
  %570 = zext i8 %569 to i32
  %571 = add nuw nsw i32 %570, %567
  %572 = shl nuw i32 1, %571
  %573 = getelementptr i8, ptr %0, i32 -40
  store i32 %572, ptr %573, align 8
  %574 = trunc i32 %571 to i8
  %575 = getelementptr i8, ptr %0, i32 -36
  store i8 %574, ptr %575, align 4
  %576 = load i8, ptr %566, align 1
  %577 = zext i8 %576 to i32
  %578 = shl nuw i32 1, %577
  %579 = trunc i32 %578 to i8
  br label %583

580:                                              ; preds = %562
  %581 = getelementptr i8, ptr %0, i32 -40
  store i32 0, ptr %581, align 8
  %582 = getelementptr i8, ptr %0, i32 -36
  store i8 0, ptr %582, align 4
  br label %583

583:                                              ; preds = %580, %564
  %584 = phi i8 [ 0, %580 ], [ %579, %564 ]
  %585 = getelementptr i8, ptr %0, i32 -35
  store i8 %584, ptr %585, align 1
  %586 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 8
  %587 = load i64, ptr %586, align 1
  %588 = getelementptr i8, ptr %0, i32 -48
  store i64 %587, ptr %588, align 8
  br label %589

589:                                              ; preds = %583, %547
  %590 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7
  %591 = load i64, ptr %590, align 1
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %595, label %593

593:                                              ; preds = %589
  %594 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %594, ptr noundef nonnull @.str.85) #11
  br label %670

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 6
  %597 = load i64, ptr %596, align 1
  %598 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %597, ptr %598, align 8
  %599 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 7
  %600 = load i64, ptr %599, align 1
  %601 = getelementptr i8, ptr %0, i32 -192
  store i64 %600, ptr %601, align 8
  %602 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7, i32 0, i32 5
  %603 = load i64, ptr %602, align 1
  %604 = getelementptr i8, ptr %0, i32 -184
  store i64 %603, ptr %604, align 8
  br label %622

605:                                              ; preds = %538
  %606 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 7
  %607 = load i32, ptr %606, align 1
  %608 = zext i32 %607 to i64
  %609 = getelementptr i8, ptr %0, i32 -192
  store i64 %608, ptr %609, align 8
  %610 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %608, ptr %610, align 8
  %611 = getelementptr inbounds %struct.ATTR_RECORD, ptr %498, i32 0, i32 1
  %612 = load i32, ptr %611, align 1
  %613 = getelementptr inbounds %struct.anon.72, ptr %606, i32 0, i32 1
  %614 = load i16, ptr %613, align 1
  %615 = zext i16 %614 to i32
  %616 = sub i32 %612, %615
  %617 = zext i32 %616 to i64
  %618 = getelementptr i8, ptr %0, i32 -184
  store i64 %617, ptr %618, align 8
  %619 = icmp ugt i32 %607, %616
  br i1 %619, label %620, label %622

620:                                              ; preds = %605
  %621 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %621, ptr noundef nonnull @.str.86) #11
  br label %670

622:                                              ; preds = %605, %595, %492, %489
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %40) #11
  tail call void @unmap_mft_record(ptr noundef %34) #11
  %623 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @ntfs_file_inode_ops, ptr %623, align 8
  %624 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @ntfs_file_ops, ptr %624, align 8
  %625 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %626 = load ptr, ptr %625, align 8
  %627 = getelementptr inbounds %struct.address_space, ptr %626, i32 0, i32 9
  store ptr @ntfs_normal_aops, ptr %627, align 4
  %628 = getelementptr i8, ptr %0, i32 -176
  %629 = load volatile i32, ptr %628, align 4
  %630 = and i32 %629, 16
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %636

632:                                              ; preds = %622
  %633 = load volatile i32, ptr %628, align 4
  %634 = and i32 %633, 64
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %641, label %636

636:                                              ; preds = %632, %622, %473
  %637 = phi ptr [ %476, %473 ], [ %625, %622 ], [ %625, %632 ]
  %638 = phi ptr [ @ntfs_mst_aops, %473 ], [ @ntfs_mst_aops, %622 ], [ @ntfs_compressed_aops, %632 ]
  %639 = load ptr, ptr %637, align 8
  %640 = getelementptr inbounds %struct.address_space, ptr %639, i32 0, i32 9
  store ptr %638, ptr %640, align 4
  br label %641

641:                                              ; preds = %636, %632
  %642 = load i16, ptr %0, align 8
  %643 = and i16 %642, -4096
  %644 = icmp eq i16 %643, -32768
  br i1 %644, label %645, label %659

645:                                              ; preds = %641
  %646 = getelementptr i8, ptr %0, i32 -176
  %647 = load volatile i32, ptr %646, align 4
  %648 = and i32 %647, 64
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %645
  %651 = load volatile i32, ptr %646, align 4
  %652 = and i32 %651, 256
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %659, label %654

654:                                              ; preds = %650, %645
  %655 = getelementptr i8, ptr %0, i32 -48
  %656 = load i64, ptr %655, align 8
  %657 = ashr i64 %656, 9
  %658 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %657, ptr %658, align 8
  br label %693

659:                                              ; preds = %650, %641
  %660 = getelementptr i8, ptr %0, i32 -184
  %661 = load i64, ptr %660, align 8
  %662 = ashr i64 %661, 9
  %663 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %662, ptr %663, align 8
  br label %693

664:                                              ; preds = %470, %460
  tail call void @iput(ptr noundef %442) #11
  br label %670

665:                                              ; preds = %444, %387, %252, %220, %162, %94
  %666 = phi ptr [ %35, %162 ], [ %35, %220 ], [ %35, %94 ], [ %35, %387 ], [ %35, %252 ], [ null, %444 ]
  %667 = phi ptr [ %40, %162 ], [ %40, %220 ], [ %40, %94 ], [ %40, %387 ], [ %40, %252 ], [ null, %444 ]
  %668 = phi i32 [ %161, %162 ], [ %221, %220 ], [ %95, %94 ], [ %384, %387 ], [ %253, %252 ], [ %446, %444 ]
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %673

670:                                              ; preds = %665, %664, %620, %593, %535, %518, %512, %430, %424, %419, %414, %406, %394, %342, %333, %327, %322, %314, %292, %274, %261, %245, %214, %185, %175, %113, %53, %47
  %671 = phi ptr [ %667, %665 ], [ %40, %47 ], [ %40, %245 ], [ %40, %214 ], [ %40, %185 ], [ %40, %175 ], [ %40, %620 ], [ %40, %593 ], [ %40, %535 ], [ %40, %518 ], [ %40, %512 ], [ null, %664 ], [ %40, %113 ], [ %40, %53 ], [ %40, %394 ], [ %40, %430 ], [ %40, %424 ], [ %40, %419 ], [ %40, %414 ], [ %40, %406 ], [ %40, %342 ], [ %40, %333 ], [ %40, %327 ], [ %40, %322 ], [ %40, %314 ], [ %40, %292 ], [ %40, %274 ], [ %40, %261 ]
  %672 = phi ptr [ %666, %665 ], [ %35, %47 ], [ %35, %245 ], [ %35, %214 ], [ %35, %185 ], [ %35, %175 ], [ %35, %620 ], [ %35, %593 ], [ %35, %535 ], [ %35, %518 ], [ %35, %512 ], [ null, %664 ], [ %35, %113 ], [ %35, %53 ], [ %35, %394 ], [ %35, %430 ], [ %35, %424 ], [ %35, %419 ], [ %35, %414 ], [ %35, %406 ], [ %35, %342 ], [ %35, %333 ], [ %35, %327 ], [ %35, %322 ], [ %35, %314 ], [ %35, %292 ], [ %35, %274 ], [ %35, %261 ]
  br label %673

673:                                              ; preds = %670, %665
  %674 = phi ptr [ %671, %670 ], [ %667, %665 ]
  %675 = phi ptr [ %672, %670 ], [ %666, %665 ]
  %676 = phi i32 [ -5, %670 ], [ %668, %665 ]
  %677 = icmp eq ptr %674, null
  br i1 %677, label %682, label %678

678:                                              ; preds = %673, %559, %495, %487, %385, %350, %346, %254, %231, %205, %96
  %679 = phi i32 [ %676, %673 ], [ -2, %96 ], [ %481, %487 ], [ -2, %495 ], [ -95, %559 ], [ %229, %231 ], [ -12, %205 ], [ -95, %346 ], [ -95, %350 ], [ -2, %254 ], [ -2, %385 ]
  %680 = phi ptr [ %675, %673 ], [ %35, %96 ], [ %35, %487 ], [ %35, %495 ], [ %35, %559 ], [ %35, %231 ], [ %35, %205 ], [ %35, %346 ], [ %35, %350 ], [ %35, %254 ], [ %35, %385 ]
  %681 = phi ptr [ %674, %673 ], [ %40, %96 ], [ %40, %487 ], [ %40, %495 ], [ %40, %559 ], [ %40, %231 ], [ %40, %205 ], [ %40, %346 ], [ %40, %350 ], [ %40, %254 ], [ %40, %385 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %681) #11
  br label %682

682:                                              ; preds = %678, %673, %39
  %683 = phi i32 [ %679, %678 ], [ %676, %673 ], [ -12, %39 ]
  %684 = phi ptr [ %680, %678 ], [ %675, %673 ], [ %35, %39 ]
  %685 = icmp eq ptr %684, null
  br i1 %685, label %687, label %686

686:                                              ; preds = %682
  tail call void @unmap_mft_record(ptr noundef %34) #11
  br label %687

687:                                              ; preds = %686, %682, %37
  %688 = phi i32 [ %38, %37 ], [ %683, %686 ], [ %683, %682 ]
  %689 = load ptr, ptr %5, align 8
  %690 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_inode, ptr noundef %689, ptr noundef nonnull @.str.87, i32 noundef %688, i32 noundef %690) #11
  tail call void @make_bad_inode(ptr noundef %0) #11
  switch i32 %688, label %691 [
    i32 -12, label %693
    i32 -95, label %693
  ]

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %692) #11
  br label %693

693:                                              ; preds = %691, %687, %687, %659, %654
  %694 = phi i32 [ 0, %654 ], [ 0, %659 ], [ %688, %687 ], [ %688, %687 ], [ %688, %691 ]
  ret i32 %694
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_attr_iget(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ntfs_attr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = icmp eq i32 %1, 160
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.ntfs_attr, ptr %5, i32 0, i32 3
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ntfs_attr, ptr %5, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ntfs_attr, ptr %5, i32 0, i32 2
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @iget5_locked(ptr noundef %15, i32 noundef %10, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %5) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %326, label %18, !prof !9

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 23
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %326, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %16, i32 -200
  store i32 0, ptr %28, align 8
  %29 = getelementptr i8, ptr %16, i32 -192
  %30 = getelementptr i8, ptr %16, i32 -168
  store i16 0, ptr %30, align 8
  %31 = getelementptr i8, ptr %16, i32 -164
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false) #11
  store volatile i32 1, ptr %31, align 4
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %16, i32 -160
  store ptr %32, ptr %33, align 8
  %34 = getelementptr i8, ptr %16, i32 -144
  store ptr null, ptr %34, align 4
  %35 = getelementptr i8, ptr %16, i32 -140
  call void @__init_rwsem(ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %36 = getelementptr i8, ptr %16, i32 -116
  call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %37 = getelementptr i8, ptr %16, i32 -96
  %38 = getelementptr i8, ptr %16, i32 -76
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %37, i8 0, i64 20, i1 false) #11
  call void @__init_rwsem(ptr noundef %38, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %39 = getelementptr i8, ptr %16, i32 -48
  %40 = getelementptr i8, ptr %16, i32 -32
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %39, i8 0, i64 14, i1 false) #11
  call void @__mutex_init(ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %41 = getelementptr i8, ptr %16, i32 -12
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %16, i32 -8
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %16, i32 -172
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %0, i32 -200
  %47 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 2
  %48 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 3
  %51 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  store i32 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %54 = load i32, ptr %53, align 8
  call void @set_nlink(ptr noundef nonnull %16, i32 noundef %54) #11
  %55 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 15
  %56 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %55, ptr noundef align 8 dereferenceable(16) %56, i32 16, i1 false) #11
  %57 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 16
  %58 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %57, ptr noundef align 8 dereferenceable(16) %58, i32 16, i1 false) #11
  %59 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 14
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %59, ptr noundef align 8 dereferenceable(16) %60, i32 16, i1 false) #11
  %61 = getelementptr i8, ptr %0, i32 -168
  %62 = load i16, ptr %61, align 8
  store i16 %62, ptr %30, align 8
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 44
  store i32 %63, ptr %64, align 8
  %65 = load i16, ptr %0, align 8
  %66 = and i16 %65, 4095
  store i16 %66, ptr %16, align 8
  %67 = call ptr @map_mft_record(ptr noundef %46) #11
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %23
  %70 = ptrtoint ptr %67 to i32
  br label %310

71:                                               ; preds = %23
  %72 = call ptr @ntfs_attr_get_search_ctx(ptr noundef %46, ptr noundef %67) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %308, label %74

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %16, i32 -156
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %16, i32 -152
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr i8, ptr %16, i32 -148
  %80 = load i32, ptr %79, align 4
  %81 = call i32 @ntfs_attr_lookup(i32 noundef %76, ptr noundef %78, i32 noundef %80, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %72) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %306, !prof !8

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %72, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 5
  %87 = load i16, ptr %86, align 1
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 33023
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %134, label %91

91:                                               ; preds = %83
  %92 = and i32 %88, 255
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %91
  %95 = getelementptr i8, ptr %16, i32 -176
  call void @_set_bit(i32 noundef 6, ptr noundef %95) #11
  %96 = load i32, ptr %75, align 4
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, ptr %79, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98, %94
  %102 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %102, ptr noundef nonnull @.str.93) #11
  br label %306

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ntfs_volume, ptr %27, i32 0, i32 11
  %105 = load i32, ptr %104, align 8
  %106 = icmp ugt i32 %105, 4096
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %108, ptr noundef nonnull @.str.94, i32 noundef %105) #11
  br label %306

109:                                              ; preds = %103
  %110 = load i16, ptr %86, align 1
  %111 = and i16 %110, 255
  %112 = icmp eq i16 %111, 1
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %114, ptr noundef nonnull @.str.95) #11
  br label %306

115:                                              ; preds = %109, %91
  %116 = phi i16 [ %110, %109 ], [ %87, %91 ]
  %117 = getelementptr i8, ptr %16, i32 -176
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = load i32, ptr %75, align 4
  %123 = icmp eq i32 %122, 144
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %24, align 4
  %126 = load volatile i32, ptr %117, align 4
  %127 = and i32 %126, 64
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, ptr @.str.98, ptr @.str.97
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %125, ptr noundef nonnull @.str.96, ptr noundef nonnull %129) #11
  br label %306

130:                                              ; preds = %121, %115
  %131 = icmp sgt i16 %116, -1
  br i1 %131, label %134, label %132

132:                                              ; preds = %130
  call void @_set_bit(i32 noundef 8, ptr noundef %117) #11
  %133 = load i16, ptr %86, align 1
  br label %134

134:                                              ; preds = %132, %130, %83
  %135 = phi i16 [ %116, %130 ], [ %133, %132 ], [ %87, %83 ]
  %136 = and i16 %135, 16384
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %159, label %138

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %16, i32 -176
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %140, 64
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %144, ptr noundef nonnull @.str.83) #11
  br label %306

145:                                              ; preds = %138
  %146 = load volatile i32, ptr %139, align 4
  %147 = and i32 %146, 16
  %148 = icmp eq i32 %147, 0
  %149 = load i32, ptr %75, align 4
  br i1 %148, label %154, label %150

150:                                              ; preds = %145
  %151 = icmp eq i32 %149, 144
  br i1 %151, label %156, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %153, ptr noundef nonnull @.str.99) #11
  br label %306

154:                                              ; preds = %145
  %155 = icmp eq i32 %149, 128
  br i1 %155, label %158, label %156

156:                                              ; preds = %154, %150
  %157 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %157, ptr noundef nonnull @.str.100) #11
  br label %306

158:                                              ; preds = %154
  call void @_set_bit(i32 noundef 7, ptr noundef %139) #11
  br label %159

159:                                              ; preds = %158, %134
  %160 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 2
  %161 = load i8, ptr %160, align 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 3
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 4
  %169 = load i16, ptr %168, align 1
  %170 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7
  %171 = getelementptr inbounds %struct.anon.72, ptr %170, i32 0, i32 1
  %172 = load i16, ptr %171, align 1
  %173 = icmp ult i16 %169, %172
  br i1 %173, label %176, label %174, !prof !8

174:                                              ; preds = %167
  %175 = load ptr, ptr %27, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %175, ptr noundef nonnull @.str.101) #11
  br label %306

176:                                              ; preds = %167, %163
  %177 = getelementptr i8, ptr %16, i32 -176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %178, 16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %182, ptr noundef nonnull @.str.102) #11
  br label %306

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7
  %185 = load i32, ptr %184, align 1
  %186 = zext i32 %185 to i64
  store i64 %186, ptr %29, align 8
  %187 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 13
  store i64 %186, ptr %187, align 8
  %188 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 1
  %189 = load i32, ptr %188, align 1
  %190 = getelementptr inbounds %struct.anon.72, ptr %184, i32 0, i32 1
  %191 = load i16, ptr %190, align 1
  %192 = zext i16 %191 to i32
  %193 = sub i32 %189, %192
  %194 = zext i32 %193 to i64
  %195 = getelementptr i8, ptr %16, i32 -184
  store i64 %194, ptr %195, align 8
  %196 = icmp ugt i32 %185, %193
  br i1 %196, label %197, label %271

197:                                              ; preds = %183
  %198 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %198, ptr noundef nonnull @.str.103) #11
  br label %306

199:                                              ; preds = %159
  %200 = getelementptr i8, ptr %16, i32 -176
  call void @_set_bit(i32 noundef 5, ptr noundef %200) #11
  %201 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 3
  %202 = load i8, ptr %201, align 1
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 4
  %206 = load i16, ptr %205, align 1
  %207 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 2
  %208 = load i16, ptr %207, align 1
  %209 = icmp ult i16 %206, %208
  br i1 %209, label %212, label %210, !prof !8

210:                                              ; preds = %204
  %211 = load ptr, ptr %27, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %211, ptr noundef nonnull @.str.104) #11
  br label %306

212:                                              ; preds = %204, %199
  %213 = load volatile i32, ptr %200, align 4
  %214 = and i32 %213, 64
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load volatile i32, ptr %200, align 4
  %218 = and i32 %217, 256
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %256, label %220

220:                                              ; preds = %216, %212
  %221 = load volatile i32, ptr %200, align 4
  %222 = and i32 %221, 64
  %223 = icmp eq i32 %222, 0
  %224 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 3
  %225 = load i8, ptr %224, align 1
  br i1 %223, label %231, label %226

226:                                              ; preds = %220
  %227 = icmp eq i8 %225, 4
  br i1 %227, label %233, label %228

228:                                              ; preds = %226
  %229 = zext i8 %225 to i32
  %230 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %230, ptr noundef nonnull @.str.84, i32 noundef %229) #11
  br label %306

231:                                              ; preds = %220
  %232 = icmp eq i8 %225, 0
  br i1 %232, label %248, label %233

233:                                              ; preds = %231, %226
  %234 = phi i8 [ %225, %231 ], [ 4, %226 ]
  %235 = zext i8 %234 to i32
  %236 = getelementptr inbounds %struct.ntfs_volume, ptr %27, i32 0, i32 13
  %237 = load i8, ptr %236, align 8
  %238 = zext i8 %237 to i32
  %239 = add nuw nsw i32 %238, %235
  %240 = shl nuw i32 1, %239
  %241 = getelementptr i8, ptr %16, i32 -40
  store i32 %240, ptr %241, align 8
  %242 = trunc i32 %239 to i8
  %243 = getelementptr i8, ptr %16, i32 -36
  store i8 %242, ptr %243, align 4
  %244 = load i8, ptr %224, align 1
  %245 = zext i8 %244 to i32
  %246 = shl nuw i32 1, %245
  %247 = trunc i32 %246 to i8
  br label %251

248:                                              ; preds = %231
  %249 = getelementptr i8, ptr %16, i32 -40
  store i32 0, ptr %249, align 8
  %250 = getelementptr i8, ptr %16, i32 -36
  store i8 0, ptr %250, align 4
  br label %251

251:                                              ; preds = %248, %233
  %252 = phi i8 [ 0, %248 ], [ %247, %233 ]
  %253 = getelementptr i8, ptr %16, i32 -35
  store i8 %252, ptr %253, align 1
  %254 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 8
  %255 = load i64, ptr %254, align 1
  store i64 %255, ptr %39, align 8
  br label %256

256:                                              ; preds = %251, %216
  %257 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7
  %258 = load i64, ptr %257, align 1
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %261, ptr noundef nonnull @.str.105) #11
  br label %306

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 6
  %264 = load i64, ptr %263, align 1
  %265 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 13
  store i64 %264, ptr %265, align 8
  %266 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 7
  %267 = load i64, ptr %266, align 1
  store i64 %267, ptr %29, align 8
  %268 = getelementptr inbounds %struct.ATTR_RECORD, ptr %85, i32 0, i32 7, i32 0, i32 5
  %269 = load i64, ptr %268, align 1
  %270 = getelementptr i8, ptr %16, i32 -184
  store i64 %269, ptr %270, align 8
  br label %271

271:                                              ; preds = %262, %183
  %272 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 9
  %273 = load ptr, ptr %272, align 8
  %274 = getelementptr inbounds %struct.address_space, ptr %273, i32 0, i32 9
  store ptr @ntfs_normal_aops, ptr %274, align 4
  %275 = getelementptr i8, ptr %16, i32 -176
  %276 = load volatile i32, ptr %275, align 4
  %277 = and i32 %276, 16
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %271
  %280 = load volatile i32, ptr %275, align 4
  %281 = and i32 %280, 64
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279, %271
  %284 = phi ptr [ @ntfs_mst_aops, %271 ], [ @ntfs_compressed_aops, %279 ]
  %285 = load ptr, ptr %272, align 8
  %286 = getelementptr inbounds %struct.address_space, ptr %285, i32 0, i32 9
  store ptr %284, ptr %286, align 4
  br label %287

287:                                              ; preds = %283, %279
  %288 = load volatile i32, ptr %275, align 4
  %289 = and i32 %288, 64
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load volatile i32, ptr %275, align 4
  %293 = and i32 %292, 256
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %291, %287
  %296 = load i32, ptr %75, align 4
  %297 = icmp eq i32 %296, 144
  br i1 %297, label %298, label %300

298:                                              ; preds = %295, %291
  %299 = getelementptr i8, ptr %16, i32 -184
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi ptr [ %299, %298 ], [ %39, %295 ]
  %302 = load i64, ptr %301, align 8
  %303 = ashr i64 %302, 9
  %304 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 21
  store i64 %303, ptr %304, align 8
  %305 = call ptr @igrab(ptr noundef %0) #11
  store ptr %46, ptr %42, align 8
  store i32 -1, ptr %41, align 4
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %72) #11
  call void @unmap_mft_record(ptr noundef %46) #11
  call void @unlock_new_inode(ptr noundef nonnull %16) #11
  br label %326

306:                                              ; preds = %260, %228, %210, %197, %181, %174, %156, %152, %143, %124, %113, %107, %101, %74
  %307 = phi i32 [ -5, %197 ], [ -5, %181 ], [ -5, %174 ], [ -5, %260 ], [ -5, %210 ], [ -5, %156 ], [ -5, %152 ], [ -5, %143 ], [ -5, %124 ], [ -5, %113 ], [ -5, %107 ], [ -5, %101 ], [ -95, %228 ], [ %81, %74 ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %72) #11
  br label %308

308:                                              ; preds = %306, %71
  %309 = phi i32 [ %307, %306 ], [ -12, %71 ]
  call void @unmap_mft_record(ptr noundef %46) #11
  br label %310

310:                                              ; preds = %308, %69
  %311 = phi i32 [ %70, %69 ], [ %309, %308 ]
  %312 = load ptr, ptr %27, align 8
  %313 = load i32, ptr %43, align 4
  %314 = getelementptr i8, ptr %16, i32 -156
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr i8, ptr %16, i32 -148
  %317 = load i32, ptr %316, align 4
  %318 = load i32, ptr %9, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_attr_inode, ptr noundef %312, ptr noundef nonnull @.str.106, i32 noundef %311, i32 noundef %313, i32 noundef %315, i32 noundef %317, i32 noundef %318) #11
  call void @make_bad_inode(ptr noundef nonnull %16) #11
  %319 = icmp eq i32 %311, -12
  br i1 %319, label %320, label %321

320:                                              ; preds = %310
  call void @unlock_new_inode(ptr noundef nonnull %16) #11
  br label %324

321:                                              ; preds = %310
  %322 = getelementptr inbounds %struct.ntfs_volume, ptr %27, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %322) #11
  call void @unlock_new_inode(ptr noundef nonnull %16) #11
  %323 = icmp eq i32 %311, 0
  br i1 %323, label %326, label %324, !prof !8

324:                                              ; preds = %321, %320
  call void @iput(ptr noundef nonnull %16) #11
  %325 = inttoptr i32 %311 to ptr
  br label %326

326:                                              ; preds = %324, %321, %300, %18, %8
  %327 = phi ptr [ %325, %324 ], [ %16, %321 ], [ inttoptr (i32 -12 to ptr), %8 ], [ %16, %300 ], [ %16, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret ptr %327
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_index_iget(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ntfs_attr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.ntfs_attr, ptr %4, i32 0, i32 3
  store i32 160, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ntfs_attr, ptr %4, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ntfs_attr, ptr %4, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr @iget5_locked(ptr noundef %11, i32 noundef %6, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_init_locked_inode, ptr noundef nonnull %4) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %316, label %14, !prof !9

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %316, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %12, i32 -200
  store i32 0, ptr %24, align 8
  %25 = getelementptr i8, ptr %12, i32 -192
  %26 = getelementptr i8, ptr %12, i32 -168
  store i16 0, ptr %26, align 8
  %27 = getelementptr i8, ptr %12, i32 -164
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false) #11
  store volatile i32 1, ptr %27, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr i8, ptr %12, i32 -160
  store ptr %28, ptr %29, align 8
  %30 = getelementptr i8, ptr %12, i32 -144
  store ptr null, ptr %30, align 4
  %31 = getelementptr i8, ptr %12, i32 -140
  call void @__init_rwsem(ptr noundef %31, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %32 = getelementptr i8, ptr %12, i32 -116
  call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %33 = getelementptr i8, ptr %12, i32 -96
  %34 = getelementptr i8, ptr %12, i32 -76
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %33, i8 0, i64 20, i1 false) #11
  call void @__init_rwsem(ptr noundef %34, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %35 = getelementptr i8, ptr %12, i32 -48
  %36 = getelementptr i8, ptr %12, i32 -32
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %35, i8 0, i64 14, i1 false) #11
  call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %37 = getelementptr i8, ptr %12, i32 -12
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %12, i32 -8
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %12, i32 -172
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 -200
  %43 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 2
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 3
  %47 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 8
  store i32 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %50 = load i32, ptr %49, align 8
  call void @set_nlink(ptr noundef nonnull %12, i32 noundef %50) #11
  %51 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 15
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %51, ptr noundef align 8 dereferenceable(16) %52, i32 16, i1 false) #11
  %53 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16
  %54 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %53, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false) #11
  %55 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 14
  %56 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %55, ptr noundef align 8 dereferenceable(16) %56, i32 16, i1 false) #11
  %57 = getelementptr i8, ptr %0, i32 -168
  %58 = load i16, ptr %57, align 8
  store i16 %58, ptr %26, align 8
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 44
  store i32 %59, ptr %60, align 8
  %61 = load i16, ptr %0, align 8
  %62 = and i16 %61, 4095
  store i16 %62, ptr %12, align 8
  %63 = call ptr @map_mft_record(ptr noundef %42) #11
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %19
  %66 = ptrtoint ptr %63 to i32
  br label %304

67:                                               ; preds = %19
  %68 = call ptr @ntfs_attr_get_search_ctx(ptr noundef %42, ptr noundef %63) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %299, label %70

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %12, i32 -152
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %12, i32 -148
  %74 = load i32, ptr %73, align 4
  %75 = call i32 @ntfs_attr_lookup(i32 noundef 144, ptr noundef %72, i32 noundef %74, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %68) #11
  switch i32 %75, label %282 [
    i32 0, label %78
    i32 -2, label %76
  ], !prof !13

76:                                               ; preds = %70
  %77 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %77, ptr noundef nonnull @.str.57) #11
  br label %295

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %68, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84, !prof !8

84:                                               ; preds = %78
  %85 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %85, ptr noundef nonnull @.str.58) #11
  br label %287

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 4
  %92 = load i16, ptr %91, align 1
  %93 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 7
  %94 = getelementptr inbounds %struct.anon.72, ptr %93, i32 0, i32 1
  %95 = load i16, ptr %94, align 1
  %96 = icmp ult i16 %92, %95
  br i1 %96, label %99, label %97, !prof !8

97:                                               ; preds = %90
  %98 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %98, ptr noundef nonnull @.str.59) #11
  br label %287

99:                                               ; preds = %90, %86
  %100 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 5
  %101 = load i16, ptr %100, align 1
  %102 = and i16 %101, -16129
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %105, ptr noundef nonnull @.str.107) #11
  br label %287

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.ATTR_RECORD, ptr %80, i32 0, i32 7
  %108 = getelementptr inbounds %struct.anon.72, ptr %107, i32 0, i32 1
  %109 = load i16, ptr %108, align 1
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %80, i32 %110
  %112 = load i32, ptr %107, align 1
  %113 = getelementptr i8, ptr %111, i32 %112
  %114 = load ptr, ptr %68, align 4
  %115 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 14
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = icmp ugt ptr %113, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %120, ptr noundef nonnull @.str.61) #11
  br label %287

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.INDEX_ROOT, ptr %111, i32 0, i32 5
  %123 = getelementptr inbounds %struct.INDEX_HEADER, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 1
  %125 = getelementptr i8, ptr %122, i32 %124
  %126 = icmp ugt ptr %125, %113
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %128, ptr noundef nonnull @.str.108) #11
  br label %287

129:                                              ; preds = %121
  %130 = load i32, ptr %111, align 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %133, ptr noundef nonnull @.str.109, i32 noundef %130) #11
  br label %287

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.INDEX_ROOT, ptr %111, i32 0, i32 1
  %136 = load i32, ptr %135, align 1
  %137 = getelementptr i8, ptr %12, i32 -40
  store i32 %136, ptr %137, align 8
  %138 = getelementptr inbounds %struct.INDEX_ROOT, ptr %111, i32 0, i32 2
  %139 = load i32, ptr %138, align 1
  store i32 %139, ptr %35, align 8
  %140 = call i32 @llvm.ctpop.i32(i32 %139) #11, !range !17
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %144, label %142

142:                                              ; preds = %134
  %143 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %143, ptr noundef nonnull @.str.65, i32 noundef %139) #11
  br label %287

144:                                              ; preds = %134
  %145 = icmp ugt i32 %139, 4096
  br i1 %145, label %146, label %148

146:                                              ; preds = %144
  %147 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %147, ptr noundef nonnull @.str.66, i32 noundef %139, i32 noundef 4096) #11
  br label %295

148:                                              ; preds = %144
  %149 = icmp ult i32 %139, 512
  br i1 %149, label %150, label %152

150:                                              ; preds = %148
  %151 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %151, ptr noundef nonnull @.str.67, i32 noundef %139, i32 noundef 512) #11
  br label %295

152:                                              ; preds = %148
  %153 = call i32 @llvm.cttz.i32(i32 %139, i1 true) #11, !range !17
  %154 = trunc i32 %153 to i8
  %155 = getelementptr i8, ptr %12, i32 -36
  store i8 %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 11
  %157 = load i32, ptr %156, align 8
  %158 = icmp ugt i32 %157, %139
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 13
  br label %166

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 9
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 10
  br label %166

166:                                              ; preds = %161, %159
  %167 = phi i32 [ %164, %161 ], [ %157, %159 ]
  %168 = phi ptr [ %165, %161 ], [ %160, %159 ]
  %169 = getelementptr i8, ptr %12, i32 -44
  store i32 %167, ptr %169, align 4
  %170 = load i8, ptr %168, align 4
  %171 = getelementptr i8, ptr %12, i32 -35
  store i8 %170, ptr %171, align 1
  %172 = getelementptr inbounds %struct.INDEX_HEADER, ptr %122, i32 0, i32 3
  %173 = load i8, ptr %172, align 1
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  store i64 0, ptr %177, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false) #11
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %68) #11
  call void @unmap_mft_record(ptr noundef %42) #11
  br label %272

178:                                              ; preds = %166
  %179 = getelementptr i8, ptr %12, i32 -176
  call void @_set_bit(i32 noundef 5, ptr noundef %179) #11
  call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %68) #11
  %180 = load ptr, ptr %71, align 8
  %181 = load i32, ptr %73, align 4
  %182 = call i32 @ntfs_attr_lookup(i32 noundef 160, ptr noundef %180, i32 noundef %181, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %68) #11
  switch i32 %182, label %185 [
    i32 0, label %187
    i32 -2, label %183
  ], !prof !13

183:                                              ; preds = %178
  %184 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %184, ptr noundef nonnull @.str.68) #11
  br label %295

185:                                              ; preds = %178
  %186 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %186, ptr noundef nonnull @.str.69) #11
  br label %282

187:                                              ; preds = %178
  %188 = load ptr, ptr %79, align 4
  %189 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 2
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %193, ptr noundef nonnull @.str.70) #11
  br label %287

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 4
  %200 = load i16, ptr %199, align 1
  %201 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 7, i32 0, i32 2
  %202 = load i16, ptr %201, align 1
  %203 = icmp ult i16 %200, %202
  br i1 %203, label %206, label %204, !prof !8

204:                                              ; preds = %198
  %205 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %205, ptr noundef nonnull @.str.71) #11
  br label %287

206:                                              ; preds = %198, %194
  %207 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 5
  %208 = load i16, ptr %207, align 1
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 16384
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %206
  %213 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %213, ptr noundef nonnull @.str.72) #11
  br label %287

214:                                              ; preds = %206
  %215 = and i32 %209, 32768
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %218, ptr noundef nonnull @.str.73) #11
  br label %287

219:                                              ; preds = %214
  %220 = and i32 %209, 255
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %223, ptr noundef nonnull @.str.74) #11
  br label %287

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 7
  %226 = load i64, ptr %225, align 1
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %229, ptr noundef nonnull @.str.75) #11
  br label %287

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 7, i32 0, i32 6
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  store i64 %232, ptr %233, align 8
  %234 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 7, i32 0, i32 7
  %235 = load i64, ptr %234, align 1
  store i64 %235, ptr %25, align 8
  %236 = getelementptr inbounds %struct.ATTR_RECORD, ptr %188, i32 0, i32 7, i32 0, i32 5
  %237 = load i64, ptr %236, align 1
  %238 = getelementptr i8, ptr %12, i32 -184
  store i64 %237, ptr %238, align 8
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %68) #11
  call void @unmap_mft_record(ptr noundef %42) #11
  %239 = load ptr, ptr %71, align 8
  %240 = load i32, ptr %73, align 4
  %241 = call ptr @ntfs_attr_iget(ptr noundef %0, i32 noundef 176, ptr noundef %239, i32 noundef %240) #11
  %242 = icmp ugt ptr %241, inttoptr (i32 -4096 to ptr)
  br i1 %242, label %243, label %246

243:                                              ; preds = %230
  %244 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %244, ptr noundef nonnull @.str.76) #11
  %245 = ptrtoint ptr %241 to i32
  br label %282

246:                                              ; preds = %230
  %247 = getelementptr i8, ptr %241, i32 -176
  %248 = load volatile i32, ptr %247, align 4
  %249 = and i32 %248, 64
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = load volatile i32, ptr %247, align 4
  %253 = and i32 %252, 128
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load volatile i32, ptr %247, align 4
  %257 = and i32 %256, 256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %255, %251, %246
  %260 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %260, ptr noundef nonnull @.str.77) #11
  br label %281

261:                                              ; preds = %255
  %262 = call fastcc i64 @i_size_read(ptr noundef %241) #11
  %263 = shl i64 %262, 3
  %264 = load i64, ptr %233, align 8
  %265 = load i8, ptr %155, align 4
  %266 = zext i8 %265 to i64
  %267 = ashr i64 %264, %266
  %268 = icmp slt i64 %263, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  %270 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %270, ptr noundef nonnull @.str.78, i64 noundef %263, i64 noundef %264) #11
  br label %281

271:                                              ; preds = %261
  call void @iput(ptr noundef %241) #11
  br label %272

272:                                              ; preds = %271, %176
  %273 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr inbounds %struct.address_space, ptr %274, i32 0, i32 9
  store ptr @ntfs_mst_aops, ptr %275, align 4
  %276 = getelementptr i8, ptr %12, i32 -184
  %277 = load i64, ptr %276, align 8
  %278 = ashr i64 %277, 9
  %279 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 21
  store i64 %278, ptr %279, align 8
  %280 = call ptr @igrab(ptr noundef %0) #11
  store ptr %42, ptr %38, align 8
  store i32 -1, ptr %37, align 4
  call void @unlock_new_inode(ptr noundef nonnull %12) #11
  br label %316

281:                                              ; preds = %269, %259
  call void @iput(ptr noundef %241) #11
  br label %287

282:                                              ; preds = %243, %185, %70
  %283 = phi ptr [ %63, %185 ], [ null, %243 ], [ %63, %70 ]
  %284 = phi ptr [ %68, %185 ], [ null, %243 ], [ %68, %70 ]
  %285 = phi i32 [ %182, %185 ], [ %245, %243 ], [ %75, %70 ]
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282, %281, %228, %222, %217, %212, %204, %192, %142, %132, %127, %119, %104, %97, %84
  %288 = phi ptr [ %284, %282 ], [ %68, %142 ], [ %68, %192 ], [ null, %281 ], [ %68, %228 ], [ %68, %222 ], [ %68, %217 ], [ %68, %212 ], [ %68, %204 ], [ %68, %132 ], [ %68, %127 ], [ %68, %119 ], [ %68, %104 ], [ %68, %97 ], [ %68, %84 ]
  %289 = phi ptr [ %283, %282 ], [ %63, %142 ], [ %63, %192 ], [ null, %281 ], [ %63, %228 ], [ %63, %222 ], [ %63, %217 ], [ %63, %212 ], [ %63, %204 ], [ %63, %132 ], [ %63, %127 ], [ %63, %119 ], [ %63, %104 ], [ %63, %97 ], [ %63, %84 ]
  br label %290

290:                                              ; preds = %287, %282
  %291 = phi ptr [ %288, %287 ], [ %284, %282 ]
  %292 = phi ptr [ %289, %287 ], [ %283, %282 ]
  %293 = phi i32 [ -5, %287 ], [ %285, %282 ]
  %294 = icmp eq ptr %291, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %290, %183, %150, %146, %76
  %296 = phi i32 [ %293, %290 ], [ -2, %76 ], [ -95, %146 ], [ -95, %150 ], [ -2, %183 ]
  %297 = phi ptr [ %292, %290 ], [ %63, %76 ], [ %63, %146 ], [ %63, %150 ], [ %63, %183 ]
  %298 = phi ptr [ %291, %290 ], [ %68, %76 ], [ %68, %146 ], [ %68, %150 ], [ %68, %183 ]
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %298) #11
  br label %299

299:                                              ; preds = %295, %290, %67
  %300 = phi i32 [ %296, %295 ], [ %293, %290 ], [ -12, %67 ]
  %301 = phi ptr [ %297, %295 ], [ %292, %290 ], [ %63, %67 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  call void @unmap_mft_record(ptr noundef %42) #11
  br label %304

304:                                              ; preds = %303, %299, %65
  %305 = phi i32 [ %66, %65 ], [ %300, %303 ], [ %300, %299 ]
  %306 = load ptr, ptr %20, align 4
  %307 = load i32, ptr %39, align 4
  %308 = getelementptr i8, ptr %12, i32 -148
  %309 = load i32, ptr %308, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_locked_index_inode, ptr noundef %306, ptr noundef nonnull @.str.110, i32 noundef %305, i32 noundef %307, i32 noundef %309) #11
  call void @make_bad_inode(ptr noundef nonnull %12) #11
  switch i32 %305, label %311 [
    i32 -12, label %310
    i32 -95, label %310
  ]

310:                                              ; preds = %304, %304
  call void @unlock_new_inode(ptr noundef nonnull %12) #11
  br label %314

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.ntfs_volume, ptr %23, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %312) #11
  call void @unlock_new_inode(ptr noundef nonnull %12) #11
  %313 = icmp eq i32 %305, 0
  br i1 %313, label %316, label %314, !prof !8

314:                                              ; preds = %311, %310
  call void @iput(ptr noundef nonnull %12) #11
  %315 = inttoptr i32 %305 to ptr
  br label %316

316:                                              ; preds = %314, %311, %272, %14, %3
  %317 = phi ptr [ %315, %314 ], [ %12, %311 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %12, %272 ], [ %12, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %317
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_alloc_big_inode(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @ntfs_big_inode_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3136) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ntfs_inode, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.big_ntfs_inode, ptr %3, i32 0, i32 1
  br label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_alloc_big_inode, ptr noundef %0, ptr noundef nonnull @.str) #11
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi ptr [ %7, %5 ], [ null, %8 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_free_big_inode(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @ntfs_big_inode_cache, align 4
  %3 = getelementptr i8, ptr %0, i32 -200
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ntfs_init_inode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  store i32 0, ptr %1, align 8
  %3 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 5
  store i16 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store volatile i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 7
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 11
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 11, i32 1
  tail call void @__init_rwsem(ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %11 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %12 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 13
  %13 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 17, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %12, i8 0, i64 20, i1 false)
  tail call void @__init_rwsem(ptr noundef %13, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 18
  %15 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %14, i8 0, i64 14, i1 false)
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %16 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 20
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 21
  store ptr null, ptr %17, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ntfs_new_extent_inode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr @ntfs_inode_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3136) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_alloc_extent_inode, ptr noundef null, ptr noundef nonnull @.str.44) #11
  br label %27

7:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %8 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 5
  store i16 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %8, i8 0, i64 20, i1 false)
  store volatile i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 7
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 11
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 11, i32 1
  tail call void @__init_rwsem(ptr noundef %15, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %16 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %17 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 13
  %18 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 17, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %17, i8 0, i64 20, i1 false) #11
  tail call void @__init_rwsem(ptr noundef %18, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %19 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 18
  %20 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %19, i8 0, i64 14, i1 false) #11
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %21 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 20
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 21
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 4
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 8
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 9
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds %struct._ntfs_inode, ptr %4, i32 0, i32 10
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %7, %6
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_inode_mount(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -200
  store i32 0, ptr %6, align 8
  %7 = getelementptr i8, ptr %0, i32 -192
  %8 = getelementptr i8, ptr %0, i32 -168
  store i16 0, ptr %8, align 8
  %9 = getelementptr i8, ptr %0, i32 -164
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false) #11
  store volatile i32 1, ptr %9, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %0, i32 -160
  store ptr %10, ptr %11, align 8
  %12 = getelementptr i8, ptr %0, i32 -144
  store ptr null, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -140
  tail call void @__init_rwsem(ptr noundef %13, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %14 = getelementptr i8, ptr %0, i32 -116
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @__ntfs_init_inode.__key) #11
  %15 = getelementptr i8, ptr %0, i32 -96
  %16 = getelementptr i8, ptr %0, i32 -76
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %15, i8 0, i64 20, i1 false) #11
  tail call void @__init_rwsem(ptr noundef %16, ptr noundef nonnull @.str.43, ptr noundef nonnull @ntfs_init_runlist.__key) #11
  %17 = getelementptr i8, ptr %0, i32 -48
  %18 = getelementptr i8, ptr %0, i32 -32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %17, i8 0, i64 14, i1 false) #11
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @__ntfs_init_inode.__key.2) #11
  %19 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 -8
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 -172
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 -176
  tail call void @_set_bit(i32 noundef 5, ptr noundef %24) #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %24) #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %24) #11
  %25 = getelementptr i8, ptr %0, i32 -156
  store i32 128, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 -152
  store ptr null, ptr %26, align 8
  %27 = getelementptr i8, ptr %0, i32 -148
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %17, align 8
  %30 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 16
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr i8, ptr %0, i32 -36
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 28
  store ptr %0, ptr %33, align 8
  %34 = load i32, ptr %28, align 4
  %35 = icmp ugt i32 %34, 65536
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %34) #11
  br label %323

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %39 = load i32, ptr %38, align 16
  %40 = tail call i32 @llvm.umax.i32(i32 %34, i32 %39)
  %41 = icmp ult i32 %40, 4097
  br i1 %41, label %42, label %48, !prof !8

42:                                               ; preds = %37
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3136, i32 noundef 4096) #14
  br label %54

48:                                               ; preds = %37
  %49 = lshr i32 %40, 12
  %50 = load volatile i32, ptr @_totalram_pages, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %57, !prof !8

52:                                               ; preds = %48
  %53 = tail call noalias ptr @__vmalloc(i32 noundef %40, i32 noundef 3138) #12
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi ptr [ %47, %45 ], [ %53, %52 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %48
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.5) #11
  br label %323

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %60 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr %28, align 4
  %64 = lshr i32 %63, %62
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 1, i32 %64
  %67 = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 21
  %68 = load i64, ptr %67, align 8
  %69 = load i8, ptr %59, align 8
  %70 = zext i8 %69 to i64
  %71 = shl i64 %68, %70
  %72 = zext i8 %61 to i64
  %73 = ashr i64 %71, %72
  %74 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 20
  br label %75

75:                                               ; preds = %83, %58
  %76 = phi i32 [ 0, %58 ], [ %92, %83 ]
  %77 = phi i64 [ %73, %58 ], [ %84, %83 ]
  %78 = load ptr, ptr %74, align 4
  %79 = load i32, ptr %38, align 16
  %80 = tail call ptr @__bread_gfp(ptr noundef %78, i64 noundef %77, i32 noundef %79, i32 noundef 8) #11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.6) #11
  br label %323

83:                                               ; preds = %75
  %84 = add i64 %77, 1
  %85 = load i8, ptr %60, align 4
  %86 = zext i8 %85 to i32
  %87 = shl i32 %76, %86
  %88 = getelementptr i8, ptr %55, i32 %87
  %89 = getelementptr inbounds %struct.buffer_head, ptr %80, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %38, align 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %88, ptr align 1 %90, i32 %91, i1 false)
  tail call void @__brelse(ptr noundef nonnull %80) #11
  %92 = add nuw i32 %76, 1
  %93 = icmp eq i32 %92, %66
  br i1 %93, label %94, label %75

94:                                               ; preds = %83
  %95 = load i32, ptr %28, align 4
  %96 = getelementptr inbounds %struct.MFT_RECORD, ptr %55, i32 0, i32 9
  %97 = load i32, ptr %96, align 1
  %98 = icmp eq i32 %97, %95
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %97, i32 noundef %95) #11
  br label %323

100:                                              ; preds = %94
  %101 = tail call i32 @post_read_mst_fixup(ptr noundef nonnull %55, i32 noundef %95) #11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.8) #11
  br label %323

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.MFT_RECORD, ptr %55, i32 0, i32 4
  %106 = load i16, ptr %105, align 1
  store i16 %106, ptr %8, align 8
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  store i32 %107, ptr %108, align 8
  %109 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.address_space, ptr %110, i32 0, i32 9
  store ptr @ntfs_mst_aops, ptr %111, align 4
  %112 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %6, ptr noundef nonnull %55) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %323, label %114

114:                                              ; preds = %104
  %115 = tail call i32 @ntfs_attr_lookup(i32 noundef 32, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %112) #11
  switch i32 %115, label %116 [
    i32 0, label %117
    i32 -2, label %239
  ], !prof !16

116:                                              ; preds = %114
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.9) #11
  br label %322

117:                                              ; preds = %114
  tail call void @_set_bit(i32 noundef 1, ptr noundef %24) #11
  %118 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %112, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 5
  %121 = load i16, ptr %120, align 1
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #11
  br label %322

126:                                              ; preds = %117
  %127 = and i32 %122, 49152
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #11
  br label %322

134:                                              ; preds = %129
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.13) #11
  br label %135

135:                                              ; preds = %134, %126
  %136 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 7
  %141 = load i32, ptr %140, align 1
  br label %146

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 7, i32 0, i32 6
  %144 = load i64, ptr %143, align 1
  %145 = trunc i64 %144 to i32
  br label %146

146:                                              ; preds = %142, %139
  %147 = phi i32 [ %145, %142 ], [ %141, %139 ]
  %148 = getelementptr i8, ptr %0, i32 -88
  store i32 %147, ptr %148, align 8
  %149 = tail call fastcc ptr @ntfs_malloc_nofs(i32 noundef %147)
  %150 = getelementptr i8, ptr %0, i32 -84
  store ptr %149, ptr %150, align 4
  %151 = icmp eq ptr %149, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.14) #11
  br label %322

153:                                              ; preds = %146
  %154 = load i8, ptr %136, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %178, label %156

156:                                              ; preds = %153
  tail call void @_set_bit(i32 noundef 2, ptr noundef %24) #11
  %157 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 7
  %158 = load i64, ptr %157, align 1
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.15) #11
  br label %322

161:                                              ; preds = %156
  %162 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %5, ptr noundef %119, ptr noundef null) #11
  %163 = getelementptr i8, ptr %0, i32 -80
  store ptr %162, ptr %163, align 8
  %164 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = ptrtoint ptr %162 to i32
  store ptr null, ptr %163, align 8
  %167 = sub i32 0, %166
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %167) #11
  br label %322

168:                                              ; preds = %161
  %169 = load ptr, ptr %150, align 4
  %170 = load i32, ptr %148, align 8
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 7, i32 0, i32 7
  %173 = load i64, ptr %172, align 1
  %174 = tail call i32 @load_attribute_list(ptr noundef %5, ptr noundef %163, ptr noundef %169, i64 noundef %171, i64 noundef %173) #11
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %192, label %176

176:                                              ; preds = %168
  %177 = sub i32 0, %174
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %177) #11
  br label %322

178:                                              ; preds = %153
  %179 = getelementptr inbounds %struct.ATTR_RECORD, ptr %119, i32 0, i32 7
  %180 = getelementptr inbounds %struct.anon.72, ptr %179, i32 0, i32 1
  %181 = load i16, ptr %180, align 1
  %182 = zext i16 %181 to i32
  %183 = getelementptr i8, ptr %119, i32 %182
  %184 = load i32, ptr %179, align 1
  %185 = getelementptr i8, ptr %183, i32 %184
  %186 = load ptr, ptr %112, align 4
  %187 = load i32, ptr %28, align 4
  %188 = getelementptr i8, ptr %186, i32 %187
  %189 = icmp ugt ptr %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.18) #11
  br label %322

191:                                              ; preds = %178
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %149, ptr align 1 %183, i32 %184, i1 false)
  br label %192

192:                                              ; preds = %191, %168
  %193 = load ptr, ptr %150, align 4
  %194 = load i32, ptr %148, align 8
  %195 = getelementptr i8, ptr %193, i32 %194
  br label %196

196:                                              ; preds = %217, %192
  %197 = phi ptr [ %193, %192 ], [ %212, %217 ]
  %198 = icmp ult ptr %197, %193
  %199 = icmp ugt ptr %197, %195
  %200 = select i1 %198, i1 true, i1 %199
  %201 = icmp eq ptr %197, %195
  %202 = select i1 %200, i1 true, i1 %201
  br i1 %202, label %321, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %197, i32 0, i32 1
  %205 = load i16, ptr %204, align 1
  %206 = icmp eq i16 %205, 0
  %207 = getelementptr i8, ptr %197, i32 6
  %208 = icmp ugt ptr %207, %195
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %321, label %210

210:                                              ; preds = %203
  %211 = zext i16 %205 to i32
  %212 = getelementptr i8, ptr %197, i32 %211
  %213 = icmp ugt ptr %212, %195
  br i1 %213, label %321, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %197, align 1
  %216 = icmp ugt i32 %215, 128
  br i1 %216, label %321, label %217

217:                                              ; preds = %214
  %218 = icmp eq i32 %215, 128
  br i1 %218, label %219, label %196

219:                                              ; preds = %217
  %220 = load i8, ptr %207, align 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %321

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %197, i32 0, i32 4
  %224 = load i64, ptr %223, align 1
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %321

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %197, i32 0, i32 5
  %228 = load i64, ptr %227, align 1
  %229 = trunc i64 %228 to i32
  %230 = load i32, ptr %21, align 4
  %231 = icmp eq i32 %230, %229
  br i1 %231, label %233, label %232

232:                                              ; preds = %226
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %322

233:                                              ; preds = %226
  %234 = lshr i64 %228, 48
  %235 = trunc i64 %234 to i32
  %236 = load i16, ptr %8, align 8
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %321

239:                                              ; preds = %233, %114
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %112) #11
  %240 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %112, i32 0, i32 1
  %241 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %242 = getelementptr i8, ptr %0, i32 -184
  %243 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %244 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %245 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %246 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  br label %247

247:                                              ; preds = %304, %239
  %248 = phi i64 [ 0, %239 ], [ %300, %304 ]
  %249 = phi i64 [ 0, %239 ], [ %302, %304 ]
  %250 = phi ptr [ null, %239 ], [ %254, %304 ]
  %251 = phi i64 [ 0, %239 ], [ %305, %304 ]
  %252 = tail call i32 @ntfs_attr_lookup(i32 noundef 128, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef %251, ptr noundef null, i32 noundef 0, ptr noundef nonnull %112) #11
  switch i32 %252, label %310 [
    i32 0, label %253
    i32 -2, label %311
  ]

253:                                              ; preds = %247
  %254 = load ptr, ptr %240, align 4
  %255 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 2
  %256 = load i8, ptr %255, align 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.20) #11
  br label %322

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 5
  %261 = load i16, ptr %260, align 1
  %262 = and i16 %261, -16129
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %259
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.21) #11
  br label %322

265:                                              ; preds = %259
  %266 = load ptr, ptr %12, align 8
  %267 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %5, ptr noundef %254, ptr noundef %266) #11
  %268 = icmp ugt ptr %267, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = ptrtoint ptr %267 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %270) #11
  br label %322

271:                                              ; preds = %265
  store ptr %267, ptr %12, align 8
  %272 = icmp eq i64 %251, 0
  br i1 %272, label %273, label %299

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7
  %275 = load i64, ptr %274, align 1
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.23) #11
  br label %322

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7, i32 0, i32 5
  %280 = load i64, ptr %279, align 1
  %281 = load i8, ptr %59, align 8
  %282 = zext i8 %281 to i64
  %283 = ashr i64 %280, %282
  %284 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7, i32 0, i32 6
  %285 = load i64, ptr %284, align 1
  store i64 %285, ptr %241, align 8
  %286 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7, i32 0, i32 7
  %287 = load i64, ptr %286, align 1
  store i64 %287, ptr %7, align 8
  %288 = load i64, ptr %279, align 1
  store i64 %288, ptr %242, align 8
  %289 = load i8, ptr %30, align 4
  %290 = zext i8 %289 to i64
  %291 = ashr i64 %285, %290
  %292 = icmp ugt i64 %291, 4294967295
  br i1 %292, label %293, label %294

293:                                              ; preds = %278
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.24) #11
  br label %322

294:                                              ; preds = %278
  %295 = tail call fastcc i32 @ntfs_read_locked_inode(ptr noundef %0)
  %296 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #11
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.25) #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %112) #11
  tail call void @kvfree(ptr noundef nonnull %55) #11
  br label %325

298:                                              ; preds = %294
  store i32 0, ptr %243, align 4
  store i32 0, ptr %244, align 8
  store i16 -32768, ptr %0, align 8
  store ptr @ntfs_empty_inode_ops, ptr %245, align 8
  store ptr @ntfs_empty_file_ops, ptr %246, align 8
  br label %299

299:                                              ; preds = %298, %271
  %300 = phi i64 [ %248, %271 ], [ %283, %298 ]
  %301 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7, i32 0, i32 1
  %302 = load i64, ptr %301, align 1
  %303 = icmp ugt i64 %302, 9223372036854775806
  br i1 %303, label %310, label %304

304:                                              ; preds = %299
  %305 = add nuw nsw i64 %302, 1
  %306 = getelementptr inbounds %struct.ATTR_RECORD, ptr %254, i32 0, i32 7
  %307 = load i64, ptr %306, align 1
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %309, label %247

309:                                              ; preds = %304
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.26) #11
  br label %322

310:                                              ; preds = %299, %247
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.27) #11
  br label %322

311:                                              ; preds = %247
  %312 = icmp eq ptr %250, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %311
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.28) #11
  br label %322

314:                                              ; preds = %311
  %315 = icmp eq i64 %249, 0
  %316 = add i64 %248, -1
  %317 = icmp eq i64 %249, %316
  %318 = select i1 %315, i1 true, i1 %317
  br i1 %318, label %320, label %319

319:                                              ; preds = %314
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.29) #11
  br label %322

320:                                              ; preds = %314
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %112) #11
  tail call void @kvfree(ptr noundef nonnull %55) #11
  br label %325

321:                                              ; preds = %233, %222, %219, %214, %210, %203, %196
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.30) #11
  br label %322

322:                                              ; preds = %321, %319, %313, %310, %309, %293, %277, %269, %264, %258, %232, %190, %176, %165, %160, %152, %133, %125, %116
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %112) #11
  br label %323

323:                                              ; preds = %322, %104, %103, %99, %82, %57, %36
  %324 = phi ptr [ null, %36 ], [ %55, %82 ], [ %55, %99 ], [ %55, %103 ], [ %55, %322 ], [ null, %57 ], [ %55, %104 ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_inode_mount, ptr noundef %3, ptr noundef nonnull @.str.31) #11
  tail call void @make_bad_inode(ptr noundef %0) #11
  tail call void @kvfree(ptr noundef %324) #11
  br label %325

325:                                              ; preds = %323, %320, %297
  %326 = phi i32 [ -1, %323 ], [ 0, %320 ], [ -1, %297 ]
  ret i32 %326
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_malloc_nofs(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp ult i32 %0, 4097
  br i1 %2, label %3, label %9, !prof !8

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/malloc.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 4096) #14
  br label %15

9:                                                ; preds = %1
  %10 = lshr i32 %0, 12
  %11 = load volatile i32, ptr @_totalram_pages, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %9
  %14 = tail call noalias ptr @__vmalloc(i32 noundef %0, i32 noundef 3138) #12
  br label %15

15:                                               ; preds = %13, %9, %6
  %16 = phi ptr [ %8, %6 ], [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_read_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_mapping_pairs_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @load_attribute_list(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_reinit_search_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_clear_extent_inode(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2208, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2209, 0\0A.popsection", ""() #11, !srcloc !21
  unreachable

12:                                               ; preds = %7
  tail call fastcc void @__ntfs_clear_inode(ptr noundef %0)
  %13 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !24
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !25
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

23:                                               ; preds = %17
  %24 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ntfs_clear_inode(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 11, i32 1
  tail call void @down_write(ptr noundef %3) #11
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @kvfree(ptr noundef nonnull %4) #11
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %6, %1
  tail call void @up_write(ptr noundef %3) #11
  %8 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @kvfree(ptr noundef nonnull %9) #11
  store ptr null, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 17, i32 1
  tail call void @down_write(ptr noundef %14) #11
  %15 = load ptr, ptr %13, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @kvfree(ptr noundef nonnull %15) #11
  store ptr null, ptr %13, align 8
  br label %18

18:                                               ; preds = %17, %12
  tail call void @up_write(ptr noundef %14) #11
  %19 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._ntfs_inode, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, @I30
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %24, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2199, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

29:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %24) #11
  br label %30

30:                                               ; preds = %29, %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ntfs_evict_big_inode(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -200
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %3) #11
  tail call void @clear_inode(ptr noundef %0) #11
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -8
  br label %9

9:                                                ; preds = %35, %7
  %10 = phi i32 [ 0, %7 ], [ %37, %35 ]
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct._ntfs_inode, ptr %13, i32 0, i32 3
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2208, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct._ntfs_inode, ptr %13, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2209, 0\0A.popsection", ""() #11, !srcloc !21
  unreachable

24:                                               ; preds = %19
  tail call fastcc void @__ntfs_clear_inode(ptr noundef %13) #11
  %25 = getelementptr inbounds %struct._ntfs_inode, ptr %13, i32 0, i32 13
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._ntfs_inode, ptr %13, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !24
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #11, !srcloc !25
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

35:                                               ; preds = %29
  %36 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef %13) #11
  %37 = add nuw nsw i32 %10, 1
  %38 = load i32, ptr %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %9, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %0, i32 -8
  %42 = load ptr, ptr %41, align 8
  tail call void @kfree(ptr noundef %42) #11
  br label %43

43:                                               ; preds = %40, %1
  tail call fastcc void @__ntfs_clear_inode(ptr noundef %2)
  %44 = getelementptr i8, ptr %0, i32 -176
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %0, i32 -8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.big_ntfs_inode, ptr %53, i32 0, i32 1
  tail call void @iput(ptr noundef %54) #11
  store i32 0, ptr %4, align 4
  store ptr null, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %48, %43
  %56 = getelementptr i8, ptr %0, i32 -96
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !8

59:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2277, 0\0A.popsection", ""() #11, !srcloc !29
  unreachable

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %0, i32 -164
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #11, !srcloc !24
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #11, !srcloc !25
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2279, 0\0A.popsection", ""() #11, !srcloc !30
  unreachable

66:                                               ; preds = %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ntfs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  %10 = load i32, ptr @overflowuid, align 4
  %11 = select i1 %9, i32 %10, i32 %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %11) #11
  %12 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, -1
  %15 = load i32, ptr @overflowgid, align 4
  %16 = select i1 %14, i32 %15, i32 %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %16) #11
  %17 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 5
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 6
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %19) #11
  br label %27

24:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %19) #11
  %25 = load i16, ptr %20, align 2
  %26 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %26) #11
  br label %27

27:                                               ; preds = %24, %23
  %28 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 40
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %30) #11
  %31 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 2
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38) #11
  br label %36

36:                                               ; preds = %35, %27
  %37 = load volatile i32, ptr %31, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #11
  br label %41

41:                                               ; preds = %40, %36
  %42 = load volatile i32, ptr %31, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40) #11
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, ptr @on_errors_arr, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 8
  br label %51

51:                                               ; preds = %61, %49
  %52 = phi i32 [ %47, %49 ], [ %64, %61 ]
  %53 = phi i32 [ 0, %49 ], [ %62, %61 ]
  %54 = load i8, ptr %50, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = getelementptr [0 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %53, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %60) #11
  br label %61

61:                                               ; preds = %58, %51
  %62 = add i32 %53, 1
  %63 = getelementptr [0 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %51

66:                                               ; preds = %61, %46
  %67 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 7
  %68 = load i8, ptr %67, align 8
  %69 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %69) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %4

4:                                                ; preds = %12, %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !32
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  %14 = load i64, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !34
  %15 = load volatile i32, ptr %2, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %4

17:                                               ; preds = %12
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_is_extended_system_file(ptr noundef %0) unnamed_addr #2 {
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef %0) #11
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.MFT_RECORD, ptr %2, i32 0, i32 5
  %4 = load i16, ptr %3, align 1
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %47, %1
  %8 = phi i32 [ %5, %1 ], [ %12, %47 ]
  %9 = tail call i32 @ntfs_attr_lookup(i32 noundef 48, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %0) #11
  switch i32 %9, label %60 [
    i32 0, label %10
    i32 -2, label %51
  ], !prof !16

10:                                               ; preds = %7
  %11 = load ptr, ptr %6, align 4
  %12 = add i32 %8, -1
  %13 = getelementptr inbounds %struct.ATTR_RECORD, ptr %11, i32 0, i32 1
  %14 = load i32, ptr %13, align 1
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load ptr, ptr %0, align 4
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %53, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.MFT_RECORD, ptr %16, i32 0, i32 8
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = icmp ugt ptr %15, %21
  br i1 %22, label %53, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ATTR_RECORD, ptr %11, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ATTR_RECORD, ptr %11, i32 0, i32 5
  %29 = load i16, ptr %28, align 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ATTR_RECORD, ptr %11, i32 0, i32 7
  %33 = getelementptr inbounds %struct.anon.72, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.anon.72, ptr %32, i32 0, i32 1
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %11, i32 %40
  %42 = load i32, ptr %32, align 1
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = icmp ult ptr %43, %11
  %45 = icmp ugt ptr %43, %15
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load i64, ptr %41, align 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %49, 11
  br i1 %50, label %60, label %7

51:                                               ; preds = %7
  %52 = icmp eq i32 %8, 0
  br i1 %52, label %60, label %53, !prof !8

53:                                               ; preds = %51, %37, %31, %27, %23, %18, %10
  %54 = phi ptr [ @.str.92, %51 ], [ @.str.88, %37 ], [ @.str.88, %10 ], [ @.str.88, %18 ], [ @.str.89, %23 ], [ @.str.90, %27 ], [ @.str.91, %31 ]
  %55 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct._ntfs_inode, ptr %56, i32 0, i32 7
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_is_extended_system_file, ptr noundef %59, ptr noundef nonnull %54) #11
  br label %60

60:                                               ; preds = %53, %51, %47, %7
  %61 = phi i32 [ 0, %51 ], [ -5, %53 ], [ %9, %7 ], [ 1, %47 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152977125, i64 2152977605, i64 2152977162, i64 2152977218, i64 2152977252, i64 2152977276, i64 2152977317, i64 2152977338, i64 2152977366, i64 2152977400}
!11 = !{i64 2152978129, i64 2152978609, i64 2152978166, i64 2152978222, i64 2152978256, i64 2152978280, i64 2152978321, i64 2152978342, i64 2152978370, i64 2152978404}
!12 = !{i64 2152979127, i64 2152979607, i64 2152979164, i64 2152979220, i64 2152979254, i64 2152979278, i64 2152979319, i64 2152979340, i64 2152979368, i64 2152979402}
!13 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!14 = !{i64 802527, i64 802554}
!15 = !{i64 803222, i64 803249, i64 803282, i64 803303, i64 803330, i64 803356}
!16 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!17 = !{i32 0, i32 33}
!18 = !{i64 2152980435, i64 2152980915, i64 2152980472, i64 2152980528, i64 2152980562, i64 2152980586, i64 2152980627, i64 2152980648, i64 2152980676, i64 2152980710}
!19 = !{i64 2152831964, i64 2152832444, i64 2152832001, i64 2152832057, i64 2152832091, i64 2152832115, i64 2152832156, i64 2152832177, i64 2152832205, i64 2152832239}
!20 = !{i64 2153019528, i64 2153020009, i64 2153019565, i64 2153019621, i64 2153019655, i64 2153019679, i64 2153019720, i64 2153019741, i64 2153019769, i64 2153019803}
!21 = !{i64 2153020551, i64 2153021032, i64 2153020588, i64 2153020644, i64 2153020678, i64 2153020702, i64 2153020743, i64 2153020764, i64 2153020792, i64 2153020826}
!22 = !{i64 2152983531, i64 2152984011, i64 2152983568, i64 2152983624, i64 2152983658, i64 2152983682, i64 2152983723, i64 2152983744, i64 2152983772, i64 2152983806}
!23 = !{i64 2148539640}
!24 = !{i64 937575, i64 2148427546, i64 2148427572, i64 2148427619, i64 2148427641, i64 2148427669, i64 2148427689}
!25 = !{i64 2148442002, i64 2148442034, i64 2148442063, i64 2148442097, i64 2148442128, i64 2148442151}
!26 = !{i64 2148539843}
!27 = !{i64 2152984433, i64 2152984913, i64 2152984470, i64 2152984526, i64 2152984560, i64 2152984584, i64 2152984625, i64 2152984646, i64 2152984674, i64 2152984708}
!28 = !{i64 2153018009, i64 2153018490, i64 2153018046, i64 2153018102, i64 2153018136, i64 2153018160, i64 2153018201, i64 2153018222, i64 2153018250, i64 2153018284}
!29 = !{i64 2153021562, i64 2153022043, i64 2153021599, i64 2153021655, i64 2153021689, i64 2153021713, i64 2153021754, i64 2153021775, i64 2153021803, i64 2153021837}
!30 = !{i64 2153022467, i64 2153022948, i64 2153022504, i64 2153022560, i64 2153022594, i64 2153022618, i64 2153022659, i64 2153022680, i64 2153022708, i64 2153022742}
!31 = !{i64 2151390216}
!32 = !{i64 2151390058}
!33 = !{i64 2151390360}
!34 = !{i64 2149584603}
