.class Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
.super Ljava/lang/Object;
.source "LePopupWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderDoubleTextChbox"
.end annotation


# instance fields
.field private cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field private imIcon:Landroid/widget/ImageView;

.field private lsSweitch:Lcom/letv/leui/widget/LeSwitch;

.field final synthetic this$0:Lcom/letv/leui/widget/LePopupWindowAdapter;

.field private tvMainText:Landroid/widget/TextView;

.field private tvSubText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->this$0:Lcom/letv/leui/widget/LePopupWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .param p1, "x1"    # Lcom/letv/leui/widget/LeCheckBox;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeSwitch;)Lcom/letv/leui/widget/LeSwitch;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .param p1, "x1"    # Lcom/letv/leui/widget/LeSwitch;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;

    return-object p1
.end method
