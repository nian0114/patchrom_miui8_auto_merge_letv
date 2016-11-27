.class Lcom/letv/leui/util/ScrollBarAnimHelper$2;
.super Ljava/lang/Object;
.source "ScrollBarAnimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/ScrollBarAnimHelper;->prepare(Landroid/view/Window;Landroid/app/ActionBar;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

.field final synthetic val$actionBar:Landroid/app/ActionBar;

.field final synthetic val$color:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;ILandroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iput-object p2, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$window:Landroid/view/Window;

    iput-object p3, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$actionBar:Landroid/app/ActionBar;

    iput p4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$color:I

    iput-object p5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iget-object v1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$window:Landroid/view/Window;

    iget-object v2, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$actionBar:Landroid/app/ActionBar;

    iget v3, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$color:I

    # invokes: Lcom/letv/leui/util/ScrollBarAnimHelper;->init(Landroid/view/Window;Landroid/app/ActionBar;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$600(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/Window;Landroid/app/ActionBar;I)V

    iget-object v0, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iget-object v1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$2;->val$view:Landroid/view/View;

    # invokes: Lcom/letv/leui/util/ScrollBarAnimHelper;->make(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$700(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/View;)V

    return-void
.end method
