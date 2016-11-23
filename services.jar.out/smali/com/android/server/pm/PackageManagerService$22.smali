.class Lcom/android/server/pm/PackageManagerService$22;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$systemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/android/server/SystemConfig;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 15880
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$22;->val$systemConfig:Lcom/android/server/SystemConfig;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 15883
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 15884
    const-string v0, "SystemConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEUI_COUNTRY_AREA_REGION_SETTINGS_URI onChange ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15886
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$22;->val$systemConfig:Lcom/android/server/SystemConfig;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLastFeatureFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->writeCurrentFeatureFileToDataSystem(Ljava/io/File;)Z

    .line 15887
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SystemConfig;->getCurrentFeatureFile(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLastFeatureFile:Ljava/io/File;

    .line 15888
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$22;->val$systemConfig:Lcom/android/server/SystemConfig;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLastFeatureFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$22;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDisableComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemConfig;->readDisableComponentsLE(Ljava/io/File;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageManagerService;->setDisableComponents(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    .line 15890
    return-void
.end method
