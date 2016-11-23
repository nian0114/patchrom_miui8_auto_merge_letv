.class public Lcom/android/server/encryption/AccessControlManagerService;
.super Landroid/app/IAccessControlManager$Stub;
.source "AccessControlManagerService.java"


# static fields
.field private static final CONTACTS_PKG:Ljava/lang/String; = "com.android.contacts"

.field private static DEBUG:Z = false

.field private static final DIALER_PKG:Ljava/lang/String; = "com.android.dialer"

.field private static final DOCUMENTS_PKG:Ljava/lang/String; = "com.android.documentsui"

.field private static final DOWNLOADS_PKG:Ljava/lang/String; = "com.android.providers.downloads.ui"

.field private static final SEND_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "AccessControlManager"

.field static final WRITE_DELAY:J

.field private static mRelationPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRelationPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field intent:Landroid/content/Intent;

.field private mAccessControlEnable:Z

.field private mAccessControlInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlInfoBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlSkipPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArgs:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextArg:I

.field mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

.field private mRelaPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRunable:Ljava/lang/Runnable;

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z

.field private sendTime:J

.field systemReday:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/encryption/AccessControlManagerService;->DEBUG:Z

    .line 48
    sget-boolean v0, Lcom/android/server/encryption/AccessControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    sput-wide v0, Lcom/android/server/encryption/AccessControlManagerService;->WRITE_DELAY:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackagesList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.documentsui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackagesList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    .line 82
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackagesList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void

    .line 48
    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2
    .param p1, "storeagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/IAccessControlManager$Stub;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.android.intent.action.LEUI_CHECK_ACCESSCONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->intent:Landroid/content/Intent;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->systemReday:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/server/encryption/AccessControlManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/encryption/AccessControlManagerService$1;-><init>(Lcom/android/server/encryption/AccessControlManagerService;)V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteRunner:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/android/server/encryption/AccessControlManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/encryption/AccessControlManagerService$2;-><init>(Lcom/android/server/encryption/AccessControlManagerService;)V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRunable:Ljava/lang/Runnable;

    .line 122
    const-string v0, "AccessControlManager"

    const-string v1, "AccessControlManager init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/encryption/AccessControlManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/encryption/AccessControlManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/encryption/AccessControlManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/encryption/AccessControlManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/encryption/AccessControlManagerService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getRelationPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    sget-object v2, Lcom/android/server/encryption/AccessControlManagerService;->mRelationPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 467
    .local v1, "relation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    .end local v1    # "relation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 633
    iget v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mNextArg:I

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mNextArg:I

    aget-object v0, v1, v2

    .line 637
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mNextArg:I

    goto :goto_0
.end method

.method private runDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 656
    invoke-direct {p0, p2}, Lcom/android/server/encryption/AccessControlManagerService;->showUsage(Ljava/io/PrintWriter;)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    invoke-direct {p0, p2}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 661
    :cond_2
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 662
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugEnable(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 663
    :cond_3
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugEnable(Ljava/io/PrintWriter;Z)V

    goto :goto_0
.end method

.method private runDebugAccessControlInfo(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageAccessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageAccessInfo;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 678
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 680
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to check access status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const-string v2, "  "

    .line 682
    .local v2, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 683
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageAccessInfo;

    iget-object v3, v3, Landroid/content/pm/PackageAccessInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageAccessInfo;

    iget v3, v3, Landroid/content/pm/PackageAccessInfo;->accessValue:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 package available "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    :cond_1
    return-void
.end method

.method private runDebugAccessControlPackage(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 690
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 691
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 692
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 693
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to check access"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    const-string v2, "  "

    .line 695
    .local v2, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 696
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 package available "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    :cond_1
    return-void
.end method

.method private runDebugEnable(Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "enable"    # Z

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 705
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->showUsage(Ljava/io/PrintWriter;)V

    .line 733
    :goto_0
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    .line 710
    .local v0, "doWrite":Z
    :cond_1
    const-string v2, "a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    sput-boolean p2, Lcom/android/server/encryption/AccessControlManagerService;->DEBUG:Z

    .line 712
    iput-boolean p2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    .line 713
    const/4 v0, 0x1

    .line 729
    :goto_1
    if-eqz v0, :cond_2

    .line 730
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->scheduleWriteNowLocked()V

    .line 732
    :cond_2
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->nextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 714
    :cond_3
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 715
    sput-boolean p2, Lcom/android/server/encryption/AccessControlManagerService;->DEBUG:Z

    goto :goto_1

    .line 716
    :cond_4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 717
    iput-boolean p2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    .line 718
    const/4 v0, 0x1

    goto :goto_1

    .line 720
    :cond_5
    if-eqz p2, :cond_6

    .line 721
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 724
    :cond_6
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 725
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private runDebugList(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 669
    const-string v0, "0  . DEBUG="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/encryption/AccessControlManagerService;->DEBUG:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 670
    const-string v0, "1  . mAccessControlEnable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    const-string v1, "NEED"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugAccessControlPackage(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    const-string v1, "SKIP"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugAccessControlPackage(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    const-string v1, "CHANGE"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugAccessControlInfo(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    .line 617
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteRunner:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/server/encryption/AccessControlManagerService;->WRITE_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method

.method private sendEUIBroadCast()V
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    .line 398
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->intent:Landroid/content/Intent;

    const-string v2, "mAccessControlInfo"

    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    .line 401
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setAccessControlInfoBackup()V
    .locals 6

    .prologue
    .line 406
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 407
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v3, :cond_0

    .line 411
    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_1
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setEUIAccessChangeBoradcast(Ljava/lang/String;)V
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x12c

    .line 369
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 370
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "key":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v2, :cond_1

    .line 375
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 379
    :goto_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 377
    .restart local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    goto :goto_1

    .line 381
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->sendEUIBroadCast()V

    .line 392
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    monitor-exit v3

    .line 393
    return-void

    .line 383
    :cond_3
    const-string v2, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System.currentTimeMillis() - sendTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v10

    if-gez v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRunable:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J

    sub-long/2addr v6, v8

    sub-long v6, v10, v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    goto :goto_2

    .line 389
    :cond_4
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->sendEUIBroadCast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private showUsage(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 642
    const-string v0, "Access Control Manager dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string v0, "  [-h][-d]]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string v0, "  -d list          list the all of debug zones"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string v0, "  -d enable <zone zone>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v0, "  -d disable <zone zone>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v0, "zong usage:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v0, "    0  : DEBUG"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v0, "    1  : mAccessControlEnable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string v0, "    package  : package string "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    return-void
.end method


# virtual methods
.method public addAccessControlPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    const-string v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccessContolPackage pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->getRelationPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    .line 292
    const-string v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRelaPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    .local v1, "relaPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 301
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->scheduleWriteLocked()V

    .line 307
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v2, :cond_5

    .line 308
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .restart local v1    # "relaPkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 311
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 315
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->setEUIAccessChangeBoradcast(Ljava/lang/String;)V

    .line 320
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    return-void
.end method

.method public checkAccessControlAllowed(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 227
    const-string v1, "AccessControlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAccessControlAllowd pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    monitor-exit v1

    .line 238
    :goto_0
    return v0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    const/4 v0, 0x2

    monitor-exit v1

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 238
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 738
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AccessControl from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "currentDateTimeString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const-string v3, "AccessControl Dump Info"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, "opti":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 750
    iput-object p3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mArgs:[Ljava/lang/String;

    .line 751
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mNextArg:I

    .line 752
    aget-object v1, p3, v2

    .line 753
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 767
    .end local v1    # "opt":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/encryption/AccessControlManagerService;->runDebugList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 756
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 757
    const-string v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    invoke-direct {p0, p2}, Lcom/android/server/encryption/AccessControlManagerService;->showUsage(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 760
    :cond_3
    const-string v3, "-d"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 761
    invoke-direct {p0, p1, p2}, Lcom/android/server/encryption/AccessControlManagerService;->runDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 764
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; user -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAccessControlChangePackagesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageAccessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccessControlPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAccessControlEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    monitor-exit v1

    return v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockScreen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    const-string v2, "AccessControlManager"

    const-string v3, "lockScreen clear the skip packages"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 446
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v2, :cond_1

    .line 447
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 450
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 452
    .restart local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->sendEUIBroadCast()V

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 456
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    const-string v3, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccessControlManagerpackageRemoved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->getRelationPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    .line 157
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "relaPkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "relaPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 163
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->scheduleWriteLocked()V

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .restart local v2    # "relaPkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "relaPkgName":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->systemReday:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v3, :cond_5

    .line 179
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 180
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .restart local v2    # "relaPkgName":Ljava/lang/String;
    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 182
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 190
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "relaPkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    return-void

    .line 185
    :cond_6
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, p1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 186
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->setEUIAccessChangeBoradcast(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mContext:Landroid/content/Context;

    .line 129
    const-string v0, "accesscontrol"

    invoke-virtual {p0}, Lcom/android/server/encryption/AccessControlManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    return-void
.end method

.method readEnable(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    const/4 v1, 0x0

    const-string v2, "enable"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "AccessControlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readState enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    goto :goto_0
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 585
    const/4 v3, 0x0

    const-string v4, "n"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readPackage pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz v1, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 593
    .local v0, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v6, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 594
    :cond_2
    if-eq v2, v6, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 597
    const-string v3, "AccessControlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 601
    :cond_3
    return-void
.end method

.method readState()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 517
    const-string v7, "AccessControlManager"

    const-string v8, "readState"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v8, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 521
    :try_start_0
    iget-object v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 526
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 528
    .local v4, "success":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 529
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 532
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1

    if-ne v6, v11, :cond_0

    .line 536
    :cond_1
    if-eq v6, v9, :cond_3

    .line 537
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 559
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 572
    if-nez v4, :cond_2

    .line 576
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_4
    monitor-exit v8

    .line 581
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_1
    return-void

    .line 522
    :catch_1
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    monitor-exit v8

    goto :goto_1

    .line 580
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 540
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_3
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 542
    .local v1, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_b

    if-ne v6, v12, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_b

    .line 543
    :cond_5
    if-eq v6, v12, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 547
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "state"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 549
    invoke-virtual {p0, v2}, Lcom/android/server/encryption/AccessControlManagerService;->readEnable(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 561
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_2
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_6
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 572
    if-nez v4, :cond_6

    .line 576
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 577
    :catch_3
    move-exception v7

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_7
    :try_start_8
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 551
    invoke-virtual {p0, v2}, Lcom/android/server/encryption/AccessControlManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 563
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_4
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 572
    if-nez v4, :cond_8

    .line 576
    :cond_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 577
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 553
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_9
    :try_start_b
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 565
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_6
    move-exception v0

    .line 566
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 572
    if-nez v4, :cond_a

    .line 576
    :cond_a
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 577
    :catch_7
    move-exception v7

    goto/16 :goto_0

    .line 558
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_b
    const/4 v4, 0x1

    .line 572
    if-nez v4, :cond_c

    .line 576
    :cond_c
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 577
    :catch_8
    move-exception v7

    goto/16 :goto_0

    .line 567
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_9
    move-exception v0

    .line 568
    .local v0, "e":Ljava/io/IOException;
    :try_start_f
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 572
    if-nez v4, :cond_d

    .line 576
    :cond_d
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 577
    :catch_a
    move-exception v7

    goto/16 :goto_0

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_11
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 572
    if-nez v4, :cond_e

    .line 576
    :cond_e
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 577
    :catch_c
    move-exception v7

    goto/16 :goto_0

    .line 572
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v7

    if-nez v4, :cond_f

    .line 576
    :cond_f
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 578
    :goto_3
    :try_start_14
    throw v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 577
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v7

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v9

    goto :goto_3
.end method

.method public removeAccessControlPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeAccessControlPackage pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->getRelationPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    .line 329
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, "relaPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 336
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->scheduleWriteLocked()V

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 341
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 342
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .restart local v1    # "relaPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v2, :cond_7

    .line 351
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 352
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .restart local v1    # "relaPkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 354
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 358
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->setEUIAccessChangeBoradcast(Ljava/lang/String;)V

    .line 363
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    return-void
.end method

.method public screenTurnOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    const-string v0, "AccessControlManager"

    const-string v1, "screenTurnOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public setAccessControlEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eq v0, p1, :cond_1

    .line 202
    iput-boolean p1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    .line 203
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->scheduleWriteLocked()V

    .line 205
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/encryption/AccessControlManagerService;->setEUIAccessChangeBoradcast(Ljava/lang/String;)V

    .line 212
    :cond_1
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppIgnoreCheckAccess(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ignore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    const-string v2, "AccessControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppIgnoreCheckAccess pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ignore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->getRelationPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    .line 248
    iget-object v3, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 249
    if-eqz p1, :cond_4

    .line 250
    if-eqz p2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, "relaPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 255
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 258
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 260
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->setEUIAccessChangeBoradcast(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 262
    :cond_2
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mRelaPkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    .restart local v1    # "relaPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 267
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "relaPkgName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlSkipPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    new-instance v2, Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/encryption/AccessControlManagerService;->checkAccessControlAllowed(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/content/pm/PackageAccessInfo;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    .line 272
    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/encryption/AccessControlManagerService;->mPackageAccessInfo:Landroid/content/pm/PackageAccessInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_4
    const-string v2, "AccessControlManager"

    const-string v4, "setAppIgnoreCheckAccess NULL packageName"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 141
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlManagershutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "doWrite":Z
    iget-boolean v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    .line 145
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    const/4 v0, 0x1

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/encryption/AccessControlManagerService;->writeState()V

    .line 151
    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "AccessControlManager"

    const-string v1, "AccessControlManager systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/encryption/AccessControlManagerService;->systemReday:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/encryption/AccessControlManagerService;->readState()V

    .line 137
    invoke-direct {p0}, Lcom/android/server/encryption/AccessControlManagerService;->setAccessControlInfoBackup()V

    .line 138
    return-void
.end method

.method writeState()V
    .locals 11

    .prologue
    .line 475
    const-string v7, "AccessControlManager"

    const-string v8, "writeState"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v8, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 477
    const/4 v5, 0x0

    .line 478
    .local v5, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 479
    :try_start_1
    iget-object v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 480
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :try_start_2
    iget-object v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 489
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 490
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 491
    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 492
    const/4 v7, 0x0

    const-string v9, "acc-ctrl"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const/4 v7, 0x0

    const-string v9, "state"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    const/4 v9, 0x0

    const-string v10, "enable"

    iget-boolean v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlEnable:Z

    if-eqz v7, :cond_1

    const-string v7, "on"

    :goto_0
    invoke-interface {v3, v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const/4 v7, 0x0

    const-string v9, "state"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    if-eqz v5, :cond_2

    .line 497
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 498
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 499
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 500
    const/4 v7, 0x0

    const-string v9, "pkg"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const/4 v7, 0x0

    const-string v9, "n"

    invoke-interface {v3, v7, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const/4 v7, 0x0

    const-string v9, "pkg"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7

    .line 513
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v7, "AccessControlManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 514
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 494
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_7
    const-string v7, "off"

    goto :goto_0

    .line 506
    :cond_2
    const/4 v7, 0x0

    const-string v9, "acc-ctrl"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 508
    iget-object v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 513
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_3
    :try_start_8
    monitor-exit v8

    goto :goto_2

    .line 509
    :catch_1
    move-exception v1

    .line 510
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "AccessControlManager"

    const-string v9, "Failed to write state, restoring backup."

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    iget-object v7, p0, Lcom/android/server/encryption/AccessControlManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3
.end method
