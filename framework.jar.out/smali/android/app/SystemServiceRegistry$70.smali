.class final Landroid/app/SystemServiceRegistry$70;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/AccessControlManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/AccessControlManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const-string v1, "accesscontrol"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/app/AccessControlManager;

    invoke-static {v0}, Landroid/app/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAccessControlManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/app/AccessControlManager;-><init>(Landroid/content/Context;Landroid/app/IAccessControlManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$70;->createService(Landroid/app/ContextImpl;)Landroid/app/AccessControlManager;

    move-result-object v0

    return-object v0
.end method
