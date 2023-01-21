#!/bin/bash
      for dir in */
      do
          base=$(basename "$dir")
          tar -czvf "${base}.tar.gz" "$dir"
      done

      for dir in */
      do
          base=$(basename "$dir")
          tar -czvf "${base}.tar.gz" "$dir"
      done
