.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 0

    .prologue
    .line 10981
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$currentStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 10985
    const/4 v5, 0x0

    .line 10987
    .local v5, "failPkg":Landroid/content/pm/PackageParser$Package;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$currentStatus:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 10988
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10989
    .local v11, "tmp":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 10990
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "install state -----processPendingInstall : tmp is exists "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10991
    const/4 v8, 0x0

    .line 10992
    .local v8, "parseFlags":I
    new-instance v9, Landroid/content/pm/PackageParser;

    invoke-direct {v9}, Landroid/content/pm/PackageParser;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10994
    .local v9, "pp":Landroid/content/pm/PackageParser;
    :try_start_1
    invoke-virtual {v9, v11, v8}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 10995
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "install state -----processPendingInstall : failPkg is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 11008
    .end local v8    # "parseFlags":I
    .end local v9    # "pp":Landroid/content/pm/PackageParser;
    .end local v11    # "tmp":Ljava/io/File;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11010
    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v10, v14}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 11011
    .local v10, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$currentStatus:I

    iput v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 11012
    const/4 v14, -0x1

    iput v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 11013
    const/4 v14, 0x0

    iput-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 11014
    new-instance v14, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v14, v15}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 11015
    iget v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 11016
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v15, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v14, v15}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 11017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v15

    .line 11018
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v14, v0, v10}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 11019
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v15, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v0, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 11026
    :cond_1
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v14, :cond_8

    const/4 v13, 0x1

    .line 11027
    .local v13, "update":Z
    :goto_1
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v14, :cond_9

    const/4 v6, 0x0

    .line 11028
    .local v6, "flags":I
    :goto_2
    if-nez v13, :cond_a

    const v14, 0x8000

    and-int/2addr v14, v6

    if-eqz v14, :cond_a

    const/4 v3, 0x1

    .line 11035
    .local v3, "doRestore":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v14, v14, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v15, 0x1

    iput v15, v14, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 11036
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v12, v14, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v14, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 11040
    .local v12, "token":I
    if-eqz v10, :cond_4

    .line 11041
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v14, :cond_3

    .line 11042
    const-string v14, "PackageManager"

    const-string v15, "install state -----processPendingInstall : res.pkg is null"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11043
    if-eqz v5, :cond_3

    .line 11044
    const-string v14, "PackageManager"

    const-string v15, "install state -----processPendingInstall : add failPkg"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11045
    iput-object v5, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 11048
    :cond_3
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v5, :cond_4

    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 11049
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "install state -----processPendingInstall : add failPkg is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11050
    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 11055
    :cond_4
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$11;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v2, v14, v15, v10}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 11056
    .local v2, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v14, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11059
    iget v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    if-eqz v3, :cond_5

    .line 11064
    const-string v14, "backup"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 11066
    .local v1, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v1, :cond_c

    .line 11070
    const/4 v14, 0x0

    :try_start_3
    invoke-interface {v1, v14}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 11071
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v14, v12}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 11086
    .end local v1    # "bm":Landroid/app/backup/IBackupManager;
    :cond_5
    :goto_4
    if-nez v3, :cond_6

    .line 11090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v15, 0x9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 11091
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v14, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11093
    .end local v7    # "msg":Landroid/os/Message;
    :cond_6
    return-void

    .line 10996
    .end local v2    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v3    # "doRestore":Z
    .end local v6    # "flags":I
    .end local v10    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v12    # "token":I
    .end local v13    # "update":Z
    .restart local v8    # "parseFlags":I
    .restart local v9    # "pp":Landroid/content/pm/PackageParser;
    .restart local v11    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 10997
    .local v4, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :try_start_4
    const-string v14, "PackageManager"

    const-string v15, "install state -----processPendingInstall :Failed parse during processPendingInstall..."

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 11003
    .end local v4    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v8    # "parseFlags":I
    .end local v9    # "pp":Landroid/content/pm/PackageParser;
    .end local v11    # "tmp":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 11004
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "PackageManager"

    const-string v15, "install state -----processPendingInstall :Failed parse during the processPendingInstall..."

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 11000
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "tmp":Ljava/io/File;
    :cond_7
    :try_start_5
    const-string v14, "PackageManager"

    const-string v15, "install state -----processPendingInstall : tmp is not exists"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 11019
    .end local v11    # "tmp":Ljava/io/File;
    .restart local v10    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :catchall_0
    move-exception v14

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v14

    .line 11026
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 11027
    .restart local v13    # "update":Z
    :cond_9
    iget-object v14, v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_2

    .line 11028
    .restart local v6    # "flags":I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 11073
    .restart local v1    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v2    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v3    # "doRestore":Z
    .restart local v12    # "token":I
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    .line 11077
    :catch_2
    move-exception v4

    .line 11078
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v14, "PackageManager"

    const-string v15, "Exception trying to enqueue restore"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11079
    const/4 v3, 0x0

    .line 11080
    goto :goto_4

    .line 11082
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v14, "PackageManager"

    const-string v15, "Backup Manager not found!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11083
    const/4 v3, 0x0

    goto :goto_4

    .line 11075
    :catch_3
    move-exception v14

    goto :goto_4
.end method
