.class Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "LeFragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LeFragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabInfo"
.end annotation


# instance fields
.field private args:Landroid/os/Bundle;

.field private clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/support/v4/app/Fragment;

.field private tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    iput-object p3, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method
