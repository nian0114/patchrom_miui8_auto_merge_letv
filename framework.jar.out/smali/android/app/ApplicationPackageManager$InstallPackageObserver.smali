.class Landroid/app/ApplicationPackageManager$InstallPackageObserver;
.super Landroid/app/PackageInstallObserver;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallPackageObserver"
.end annotation


# instance fields
.field extraPackage:Ljava/lang/String;

.field extraPermission:Ljava/lang/String;

.field private isNew:Z

.field private mFlags:I

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method private constructor <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2494
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 2496
    iput-object v1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mPackageName:Ljava/lang/String;

    .line 2497
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->isNew:Z

    .line 2500
    iput-object v1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;

    .line 2501
    iput-object v1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPermission:Ljava/lang/String;

    .line 2505
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ApplicationPackageManager;Landroid/app/ApplicationPackageManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ApplicationPackageManager;
    .param p2, "x1"    # Landroid/app/ApplicationPackageManager$1;

    .prologue
    .line 2494
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager$InstallPackageObserver;-><init>(Landroid/app/ApplicationPackageManager;)V

    return-void
.end method


# virtual methods
.method public getNew(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2513
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2514
    .local v0, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 2515
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2516
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->isNew:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    .end local v0    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 2519
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2535
    const/4 v8, 0x1

    if-eq p2, v8, :cond_6

    .line 2536
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mPackageName:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 2537
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launch app -----packageName(InstallPackageObserver) is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2539
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "PackageName"

    iget-object v9, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2540
    const-string v8, "InstallResult"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2543
    const/16 v8, -0x70

    if-ne p2, v8, :cond_3

    .line 2544
    const-string v8, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2545
    .local v2, "duplicatePermPackage":Ljava/lang/String;
    const-string v8, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    invoke-virtual {p4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPermission:Ljava/lang/String;

    .line 2546
    if-eqz v2, :cond_0

    .line 2548
    :try_start_0
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2549
    .local v1, "duplicatePermApplication":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-virtual {v8, v1}, Landroid/app/ApplicationPackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    .end local v1    # "duplicatePermApplication":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPermission:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 2555
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install : package LeuiPackageInstallObserver extraPermission is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :cond_1
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 2558
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install : package LeuiPackageInstallObserver extraPackage is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_2
    const-string v8, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    iget-object v9, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2562
    const-string v8, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    iget-object v9, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPermission:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2565
    .end local v2    # "duplicatePermPackage":Ljava/lang/String;
    :cond_3
    const-string v8, "android.intent.action.PACKAGE_ADDED_FAILED"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2566
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    # getter for: Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;
    invoke-static {v8}, Landroid/app/ApplicationPackageManager;->access$100(Landroid/app/ApplicationPackageManager;)Landroid/app/ContextImpl;

    move-result-object v8

    const-string v9, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v8, v5, v9}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2601
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void

    .line 2550
    .restart local v2    # "duplicatePermPackage":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 2551
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v2, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->extraPackage:Ljava/lang/String;

    goto :goto_0

    .line 2568
    .end local v2    # "duplicatePermPackage":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v8, "ApplicationPackageManager"

    const-string v9, "Launch app -----packageName(InstallPackageObserver) is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2571
    :cond_6
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    iget-boolean v9, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->isNew:Z

    invoke-virtual {v8, p1, v9}, Landroid/app/ApplicationPackageManager;->setPermByList(Ljava/lang/String;Z)Z

    .line 2574
    const/4 v0, 0x0

    .line 2575
    .local v0, "allow":Z
    iget v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    .line 2576
    :goto_2
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install : success allow is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mFlags is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mFlags:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    if-eqz v0, :cond_4

    .line 2578
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-virtual {v8, p1}, Landroid/app/ApplicationPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 2579
    .local v7, "mLaunchIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 2580
    .local v4, "enabled":Z
    if-eqz v7, :cond_7

    .line 2581
    const-string v8, "ApplicationPackageManager"

    const-string/jumbo v9, "install : success mLaunchIntent is not null "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2583
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 2584
    const/4 v4, 0x1

    .line 2587
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install : success enabled is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    if-eqz v4, :cond_9

    .line 2591
    const/high16 v8, 0x10200000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2593
    iget-object v8, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    # getter for: Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;
    invoke-static {v8}, Landroid/app/ApplicationPackageManager;->access$100(Landroid/app/ApplicationPackageManager;)Landroid/app/ContextImpl;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;)V

    .line 2594
    const-string v8, "ApplicationPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "install : LeuiPackageInstallObserver startActivity packageName is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2575
    .end local v4    # "enabled":Z
    .end local v7    # "mLaunchIntent":Landroid/content/Intent;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2596
    .restart local v4    # "enabled":Z
    .restart local v7    # "mLaunchIntent":Landroid/content/Intent;
    :cond_9
    const-string v8, "ApplicationPackageManager"

    const-string/jumbo v9, "install : LeuiPackageInstallObserver startActivity queryIntentActivities is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 2526
    iput p1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mFlags:I

    .line 2527
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2509
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$InstallPackageObserver;->mPackageName:Ljava/lang/String;

    .line 2510
    return-void
.end method
