function drmi
   docker rmi (docker images --filter=reference="*$argv*" -q)
end
