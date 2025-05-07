#!/bin/bash

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
