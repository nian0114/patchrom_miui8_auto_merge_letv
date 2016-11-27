.class Landroid/webkit/WebView$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1078
    new-array v0, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v3

    .line 1079
    .local v0, "clazz_userUnreg":[Ljava/lang/Class;
    new-array v1, v4, [Ljava/lang/Object;

    # getter for: Landroid/webkit/WebView;->sPerfHandle:I
    invoke-static {}, Landroid/webkit/WebView;->access$000()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1080
    .local v1, "objs_userUnreg":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/webkit/WebView$1;->this$0:Landroid/webkit/WebView;

    # getter for: Landroid/webkit/WebView;->sPerfService:Ljava/lang/Object;
    invoke-static {v2}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "userUnreg"

    # invokes: Landroid/webkit/WebView;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, v0, v1}, Landroid/webkit/WebView;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    return-void
.end method
