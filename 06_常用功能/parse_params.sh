#!/bin/bash



# 解析输入参数
function parse_params() {
    if [[ $# -eq 0 ]]; then
        echo "该命令需要指定参数，可以使用\"-h\"选项查看帮助信息。"
        exit 1
    fi

    while [[ $# -gt 0 ]]; do
        case $1 in
        -b | --branch)
            assert_param_not_null "$1" "$2"
            BRANCH="$2"
            shift 2
            ;;
        --hyundai)
            assert_param_not_null "$1" "$2"
            REPO_HYUNDAI="$2"
            shift 2
            ;;
        --infolink)
            assert_param_not_null "$1" "$2"
            REPO_INFOLINK="$2"
            shift 2
            ;;
        -h | --help)
            show_help
            exit 0
            ;;
        *)
            error "无法解析部分参数，请使用\"-h\"选项查看帮助信息。"
            exit 1
            ;;
        esac
    done
}

# 显示帮助信息
show_help() {
    echo "该命令的格式为：./addbranch.sh -b <目标分支名称> --hyundai <Hyundai仓库名称> --infolink <InfoLink仓库名称>"
    echo "其中每个参数都是必不可少的，目标分支必须在服务器上已经创建。"
    echo "示例："
    echo "    ./addbranch.sh -b new_branch --hyundai hyundai_release --infolink infolink_release"
}

# 主要逻辑
parse_params "$@"
